# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :member
      t.string :address
      t.date :order_date
      t.date :ship_date

      t.timestamps
    end
  end
end
