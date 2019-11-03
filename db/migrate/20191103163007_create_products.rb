# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :desc
      t.string :category
      t.integer :quantity
      t.float :discount
      t.boolean :available

      t.timestamps
    end
  end
end
