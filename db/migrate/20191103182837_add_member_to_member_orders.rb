# frozen_string_literal: true

class AddMemberToMemberOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :member_orders, :member, foreign_key: true
  end
end
