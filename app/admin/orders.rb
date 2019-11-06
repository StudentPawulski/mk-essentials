# frozen_string_literal: true

ActiveAdmin.register Order do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # show do
  #  attributes_table do
  #    row :member_id
  #    row :address
  #    row :order_date
  #    row :ship_date
  #    row :status_id
  #  end
  #  active_admin_comments
  # end
  # Uncomment all parameters which should be permitted for assignment
  #
  form do |f|
    f.inputs 'Details' do
      f.semantic_errors
      f.inputs
      # f.inputs do
      #  f.input :image, as: :file
      # end
    end
    f.actions
  end
  permit_params :member, :address, :order_date, :ship_date, :member_id, :status_id, :province_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:member, :address, :order_date, :ship_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
