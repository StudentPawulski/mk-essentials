class RemoveProductFromOrderDetails < ActiveRecord::Migration[6.0]
  def change

    remove_column :order_details, :product, :string
  end
end
