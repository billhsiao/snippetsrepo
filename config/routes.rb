Rails.application.routes.draw do
  root 'snippets#index'
  get 'users/dashboard', to: 'users#dashboard'
  post '/snippets/search', to: 'snippets#index', as: :search

  resources :snippets
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # Create a better looking URL for logging in
  get '/login', to: 'sessions#new'
end
