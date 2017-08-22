# frozen_string_literal: true
Rails.application.routes.draw do
  get 'subscribers/index'
  resources :subscribers

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, skip: [:subscribers]
  root to: 'pages#home'

end
