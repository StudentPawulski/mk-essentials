# frozen_string_literal: true

class MemberOrder < ApplicationRecord
  validates :order_id, :member_id, presence: true
  belongs_to :member
  belongs_to :order
end
