Rails.application.routes.draw do
  root 'home#index'
  resources :tasks
  resources :book_search, only: [:index]
  resources :gravatar, only: [:index]
  resources :meal_finder, only: [:index]
end
