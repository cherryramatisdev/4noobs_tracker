# frozen_string_literal: true

namespace :fetch do
  desc 'Fetch all the repositories from the README at https://github.com/he4rt/4noobs and insert to the database'
  task repositories: :environment do
    require_relative '../../app/services/github/extract_repositories'
    require 'ruby-progressbar'

    progress_bar = ProgressBar.create

    Github::ExtractRepositories.new.call.map do |url|
      progress_bar.increment
      Repository.create(name: url[:repo_name], owner: url[:owner], url: url[:full_url])
    end

    progress_bar.finish
  end

  desc 'Fetch all the issues from all the repositories and insert to the database'
  task issues: :environment do
    require_relative '../../app/services/github/extract_repositories'
    require_relative '../../app/services/github/extract_issues_from_repository'

    repositories = Repository.all

    if repositories.empty?
      puts 'First run rails fetch:repositories and then fetch:issues'
      return
    end

    progress_bar = ProgressBar.create

    repositories.each do |repository|
      progress_bar.increment
      Github::ExtractIssuesFromRepository.new.call(id: repository[:id], name: repository[:name],
                                                             owner: repository[:owner])
    end

    progress_bar.finish
  end
end
