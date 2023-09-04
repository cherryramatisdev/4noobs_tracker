# frozen_string_literal: true

Rails.application.routes.draw do
  root 'repository#index'

  resources :repository, only: %i[index]

end
