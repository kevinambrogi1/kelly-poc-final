# frozen_string_literal: true
Rails.application.routes.draw do
  get 'subscribers/index'
  resources :subscribers

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, skip: [:subscribers]
  root to: 'pages#home'


  controller :static_pages do
    get :about
    get :school
    get :corporate
    get :shows
    get :testimonials
    get :contact
  end

end
