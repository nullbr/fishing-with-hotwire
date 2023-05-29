# frozen_string_literal: true

Rails.application.routes.draw do
  root 'baits#index'

  resources :baits

  resources :tackle_box_items

  resources :fish_catches do
    resources :likes
  end

  get 'activity', to: 'activity#index'

  resources :users
  get 'signup' => 'users#new'

  resource :session, only: %i[new create destroy]
  get 'signin' => 'sessions#new'
end
