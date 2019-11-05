# frozen_string_literal: true

class Order < ApplicationRecord
  validates :address, :order_date,
            :member_id, :status_id, presence: true

  belongs_to :status
  belongs_to :member
end
