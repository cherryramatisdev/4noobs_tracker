# frozen_string_literal: true

require 'json'

module Services
  module Github
    class ExtractRepositories
      def call
        response = Faraday.get('https://raw.githubusercontent.com/he4rt/4noobs/master/README.MD')

        extract_url_info(extract_links(response.body)).compact
      end

      private

      # @param response_string [String] This represent the whole README
      # @return [Array<String>]
      def extract_links(response_string)
        regex = %r{\[Clique aqui ➡️\]\((https://github\.com/.*?)\)}

        response_string.scan(regex).flatten
      end

      # Retrieves an array of hashes representing GitHub repository information.
      #
      # Each hash includes the following keys:
      # - `:owner` [String] The owner of the repository.
      # - `:repo_name` [String] The name of the repository.
      # - `:full_url` [String] The full URL of the repository on GitHub.
      #
      # @param urls [Array<String>]
      # @return [Array<Hash>] An array of hashes containing GitHub repository information.
      def extract_url_info(urls)
        urls.map do |url|
          match = url.match(%r{https://github\.com/([^/]+)/([^/]+)$})

          next if match.nil?

          {
            owner: match[1],
            repo_name: match[2],
            full_url: match[0]
          }
        end
      end
    end
  end
end
