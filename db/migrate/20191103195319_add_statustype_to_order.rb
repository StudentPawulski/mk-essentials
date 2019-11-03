# frozen_string_literal: true

class AddStatustypeToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :status, foreign_key: true
  end
end
