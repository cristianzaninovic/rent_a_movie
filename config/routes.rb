Rails.application.routes.draw do
  # root "site#index"
  get 'movies/existing_client_fields', to: 'movies#existing_client_fields'
  get 'movies/new_client_fields', to: 'movies#new_client_fields'
  get 'site/index'
  resources :clients
  resources :movies
  root 'movies#index'
end
