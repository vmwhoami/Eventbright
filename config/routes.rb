Rails.application.routes.draw do
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
 resources :users, only: [:new, :create, :show]
 root "users#index"
end
