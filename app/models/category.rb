# frozen_string_literal: true

class Category < ApplicationRecord
  #  validates :name, :phone, :email, presence: true
  has_many :products
  validates :name, presence: true
end
