# frozen_string_literal: true

class AddOrderToOrderDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_details, :order, foreign_key: true
  end
end
