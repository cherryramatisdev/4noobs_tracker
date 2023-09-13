# frozen_string_literal: true

require 'json'

module Github
  class ExtractRepositories
    def call
      response = HTTParty.get('https://raw.githubusercontent.com/he4rt/4noobs/master/README.MD')

      extract_repositories_info(response.body).compact
    end

    private

    # Returns an array of hashes representing GitHub repository information of a 4Noob.
    #
    # This method extracts each row from the README markdown tables, and iterates
    # over each row to extract 4Noob repository information.
    #
    # @param response_string [String] This represent the whole raw README
    # @return [Array<Hash>] An array of hashes containing GitHub repository information of a 4Noob.
    def extract_repositories_info(response_string)
      repositories_info = []

      table_row_regex = %r{\|.*\|?}
      response_string.scan(table_row_regex) do | row |
        repository_info = extract_repository_info_from_row(row)
        next if repository_info.nil?
        repositories_info << repository_info
      end

      return repositories_info
    end

    # Returns a hash with repository information about a valid 4Noob repository or nil otherwise.
    #
    # Extract information from row table about a valid 4Noob repository (published 4Noob),
    # if row doesn't match a valid repository, it will return nil.
    #
    # @param row [String] This represent a specific row of a markdown table
    # @return [Hash|nil] Hash containing GitHub repository information of a 4Noob or nil
    def extract_repository_info_from_row(row)
      row_info_regex = %r{\| ([^\|]*) .* \[Clique aqui ➡️\]\((https://github\.com/([^/]+)/([^/]+\w))/?\)}
      row_info_match = row.match(row_info_regex)
      # Ignores row that don't have GitHub repo.
      # For example headers table and unpublished 4Noobs.
      return if row_info_match.nil?
      {
        owner: row_info_match[3],
        repo_name: row_info_match[4],
        full_url: row_info_match[2],
        technology: row_info_match[1]
      }
    end
end
