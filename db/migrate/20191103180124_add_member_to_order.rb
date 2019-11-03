# frozen_string_literal: true

class AddMemberToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :member, foreign_key: true
  end
end
