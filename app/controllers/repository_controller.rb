# frozen_string_literal: true

class RepositoryController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = 10
    @repositories = Repository.paginate(page: page, per_page: per_page)

    render :index
  end
end
