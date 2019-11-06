# frozen_string_literal: true

class AddProvinceToOrder2 < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :province, foreign_key: true
  end
end
