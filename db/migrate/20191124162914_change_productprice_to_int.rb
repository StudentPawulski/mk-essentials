# frozen_string_literal: true

class ChangeProductpriceToInt < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_details, :product_price, :float
    add_column :order_details, :product_price, :integer
    remove_column :products, :price, :float
    add_column :products, :price, :integer
  end
end
