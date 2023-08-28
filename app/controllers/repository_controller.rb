# frozen_string_literal: true

class RepositoryController < ApplicationController
  def index
    @repositories = Repository.all

    render :index
  end
end
