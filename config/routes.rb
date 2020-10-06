Rails.application.routes.draw do
  resources :events, only: [:show,:new, :create]
 get '/login' , to:"sessions#new"
 post '/login' , to: "sessions#create"
 delete '/logout',to:  "sessions#destroy"
 resources :users, only: [:new, :create, :show]
 root "users#index"
end
