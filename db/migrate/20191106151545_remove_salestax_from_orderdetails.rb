# frozen_string_literal: true

class RemoveSalestaxFromOrderdetails < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_details, :sales_tax, :float
  end
end
