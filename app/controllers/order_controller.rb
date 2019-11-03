# frozen_string_literal: true

class OrderController < ApplicationController
  def index
    @orders = Orders.all
  end
end
