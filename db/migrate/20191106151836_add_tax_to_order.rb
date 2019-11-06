class AddTaxToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :tax, :float
  end
end
