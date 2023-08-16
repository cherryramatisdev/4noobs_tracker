# frozen_string_literal: true

require 'json'
require 'uri'

module Services
  module Github
    class ListIssueForRepository
      # @param name [String]
      # @param owner [String]
      def call(name:, owner:)
        # insert ?state=all to get closed ones
        response = Faraday.get("https://api.github.com/repos/#{owner}/#{name}/issues", nil,
                               { 'Authorization' => "Bearer #{ENV.fetch('GH_API_KEY', nil)}" })

        json = JSON.parse(response.body)

        return [] if json.empty? || json.nil?

        json.map do |obj|
          { title: obj['title'], url: obj['html_url'], state: obj['state'], assignee: obj['assignee'] ||= '',
            type: extract_url_type(url: obj['html_url']) }
        end
      end

      private

      # @param url [String]
      def extract_url_type(url:)
        parsed_uri = URI.parse(url)

        parsed_uri.path.split('/')[3]
      end
    end
  end
end
