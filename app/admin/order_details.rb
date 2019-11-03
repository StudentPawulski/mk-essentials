# frozen_string_literal: true

ActiveAdmin.register OrderDetail do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  form do |f|
    f.inputs 'Details' do
      f.input :order_id, as: :select, collection: Order.all
      f.input :product_id, as: :select, collection: Product.all
      f.input :product_price
      f.input :product_qty
      f.input :sales_tax
      f.input :total_cost
    end
    f.actions
  end
  permit_params :order, :product, :product_price, :product_qty, :sales_tax, :total_cost
  #
  # or
  #
  # permit_params do
  #   permitted = [:order, :product, :product_price, :product_qty, :sales_tax, :total_cost]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
