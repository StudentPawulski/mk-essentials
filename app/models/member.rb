# frozen_string_literal: true

class Member < ApplicationRecord
  validates :name, :email, presence: true
end
