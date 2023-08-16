# frozen_string_literal: true

Services::Github::ExtractRepositories.new.call.map do |url|
  Repository.create(name: url[:repo_name], owner: url[:owner], url: url[:full_url])
end
