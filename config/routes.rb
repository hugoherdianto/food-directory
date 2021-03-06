# frozen_string_literal: true

Rails.application.routes.draw do
  get 'restaurant_reviews/new'

  get 'restaurant_reviews/create'

  get 'restaurant_reviews/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :foods
  resources :users
  resources :restaurants
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#delete'
  root 'foods#index'
end
