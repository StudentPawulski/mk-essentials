# frozen_string_literal: true

class Tax < ApplicationRecord
  validates :name, :rate, presence: true
  has_many :province
end
