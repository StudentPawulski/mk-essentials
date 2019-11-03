# frozen_string_literal: true

class AddOrderToMemberOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :member_orders, :order, foreign_key: true
  end
end
