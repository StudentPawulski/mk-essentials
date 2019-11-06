# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, :price, :quantity, :desc, :category_id, presence: true

  belongs_to :category

  has_one_attached :image
end
