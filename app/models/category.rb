# frozen_string_literal: true

class Category < ApplicationRecord
  #  validates :name, :phone, :email, presence: true
  validates :name, presence: true
end
