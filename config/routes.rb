# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'subscribers/index'
  resources :subscribers

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # get 'subscribers/index'

end
