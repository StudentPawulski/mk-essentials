# frozen_string_literal: true

class AddProductToOrderDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_details, :product, foreign_key: true
  end
end
