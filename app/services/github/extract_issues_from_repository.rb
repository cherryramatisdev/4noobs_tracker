# frozen_string_literal: true

require 'json'

module Services
  module Github
    class ExtractIssuesFromRepository
      # @param name [String]
      # @param owner [String]
      # @return [void]
      def call(id:, name:, owner:)
        gh_token = "Bearer #{ENV.fetch('GH_API_KEY', nil)}"
        response = http_client(url: "https://api.github.com/repos/#{owner}/#{name}/issues",
                               headers: { 'Authorization' => gh_token })

        json_response = JSON.parse(response.body)

        return [] if json_response.empty? || json_response.nil?

        insert_to_table(response: json_response, repository_id: id)
      end

      private

      # @param url [String]
      # @param headers [Array<Hash<String, String>>]
      def http_client(url:, headers:)
        HTTParty.get(url, { headers: })
      end

      # @param issue [Array|Hash]
      # @return [Boolean]
      def validate_issue_object(issue)
        return false if issue.is_a?(Array)

        %w[title html_url state assignee].all? { |property| issue.key?(property) }
      end

      # @param url [String]
      # @return [String]
      def extract_url_type(url:)
        parsed_uri = URI.parse(url)

        parsed_uri.path.split('/')[3]
      end

      # @param response [Array<Hash>] This is after being parsed by JSON.parse
      # @return [void]
      def insert_to_table(response:, repository_id:)
        response.each do |obj|
          next unless validate_issue_object(obj)

          Issue.create(title: obj['title'], url: obj['html_url'], state: obj['state'],
                       assignee: obj['assignee'] ||= '', issue_type: extract_url_type(url: obj['html_url']),
                       repository_id:)
        end
      end
    end
  end
end
