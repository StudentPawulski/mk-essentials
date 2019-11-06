# frozen_string_literal: true

class OrderDetail < ApplicationRecord
  validates :product_price, :product_qty,
            :total_cost, :product_id,
            :order_id, presence: true
end
