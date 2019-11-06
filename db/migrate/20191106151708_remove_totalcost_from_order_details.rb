class RemoveTotalcostFromOrderDetails < ActiveRecord::Migration[6.0]
  def change

    remove_column :order_details, :total_cost, :float
  end
end
