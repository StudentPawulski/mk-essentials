# frozen_string_literal: true

class MemberOrder < ApplicationRecord
  validates :order_id, :member_id, presence: true
end
