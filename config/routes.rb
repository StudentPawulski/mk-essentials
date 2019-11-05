# frozen_string_literal: true

Rails.application.routes.draw do
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

  get '/:page' => 'static#show'

  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
