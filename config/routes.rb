Rails.application.routes.draw do
  devise_for :users
  # resources :users, only: [:sign_out]
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :about, only: [:index]
  resources :recipes
  resources :my_recipes
end
