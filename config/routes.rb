# frozen_string_literal: true

Rails.application.routes.draw do

  resources :main, only: :index
  resources :technika, only: :index
  resources :datove_nosice, only: :index
  resources :sbirky, only: :index

  root to: 'main#index'

  resources :user_sessions

  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
