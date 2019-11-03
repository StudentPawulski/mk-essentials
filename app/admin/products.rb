# frozen_string_literal: true

ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :price, :desc, :category, :quantity, :discount, :available
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :desc, :category, :quantity, :discount, :available]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
