# frozen_string_literal: true

Rails.application.routes.draw do
  get 'static/show'
  get 'order/index'
  get 'status/index'
  get 'category/index'
  get 'product/index'
  get 'product/show'

  get '/:page' => 'static#show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
