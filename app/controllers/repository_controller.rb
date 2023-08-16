# frozen_string_literal: true

class RepositoryController < ApplicationController
  def list_issues
    @repositories = Repository.all.map do |repository|
      issues = Services::Github::ListIssueForRepository.new.call(name: repository[:name], owner: repository[:owner])

      { id: repository[:id], name: repository[:name], owner: repository[:owner], url: repository[:url], issues: }
    end

    render :index
  end
end
