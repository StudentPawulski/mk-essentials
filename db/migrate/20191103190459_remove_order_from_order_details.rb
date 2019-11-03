class RemoveOrderFromOrderDetails < ActiveRecord::Migration[6.0]
  def change

    remove_column :order_details, :order, :string
  end
end
