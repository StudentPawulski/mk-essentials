# frozen_string_literal: true

class AddCategoryToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :category, foreign_key: true
  end
end
