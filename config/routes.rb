# frozen_string_literal: true

Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  # devise_for :members
  get 'pages/index'
  get 'pages/show'
  get 'page/index'
  get 'page/show'
  get 'province/index'
  get 'province/show'
  get 'member/index'
  get 'member/show'
  get 'products/index'
  get 'static/show'
  get 'order/index'
  get 'status/index'
  get 'category/index'
  get 'product/index'
  get 'product/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]
  resources :pages, only: %i[index show]

  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
