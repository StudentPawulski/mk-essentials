# frozen_string_literal: true

class RemoveProvinceFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :province, :string
  end
end
