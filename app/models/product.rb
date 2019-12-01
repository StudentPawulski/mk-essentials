# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, :price, :quantity, :desc, presence: true

  belongs_to :category
  has_many :tax
  paginates_per 3

  has_one_attached :image
end
