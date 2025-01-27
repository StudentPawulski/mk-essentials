# frozen_string_literal: true

ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  form do |f|
    f.inputs 'Details' do
      f.semantic_errors
      f.inputs
      f.inputs do
        f.input :image, as: :file
      end
    end
    f.actions
  end
  permit_params :name, :price, :desc, :quantity, :discount, :available, :category_id, :image

  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :desc, :quantity, :discount, :available, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
