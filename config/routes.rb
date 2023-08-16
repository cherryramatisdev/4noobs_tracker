# frozen_string_literal: true

Rails.application.routes.draw do
  root 'repository#list_issues'
end
