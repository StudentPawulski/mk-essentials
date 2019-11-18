# frozen_string_literal: true

class AddTaxToProvince < ActiveRecord::Migration[6.0]
  def change
    add_reference :provinces, :tax, foreign_key: true
  end
end
