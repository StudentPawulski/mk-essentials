# frozen_string_literal: true

class Province < ApplicationRecord
  validates :name, presence: true
end
