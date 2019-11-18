# frozen_string_literal: true

class Province < ApplicationRecord
  validates :name, presence: true
  # belongs_to :order
  has_many :order
  belongs_to :tax
end
