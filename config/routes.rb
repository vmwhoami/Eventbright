# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, only: %i[index new create show] do
    resources :invitations, only: [:create]
  end
  root 'users#index'
end
