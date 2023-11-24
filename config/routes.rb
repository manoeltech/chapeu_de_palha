Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :clients
  resources :companies
  resources :homes, only: [:index]

  root "homes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
