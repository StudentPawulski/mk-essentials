# frozen_string_literal: true

class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      # t.string :order
      # t.string :product
      t.float :product_price
      t.integer :product_qty
      # t.float :sales_tax
      # t.float :total_cost

      t.timestamps
    end
  end
end
