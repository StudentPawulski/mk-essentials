# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    # before_action :authenticate_member!
    @products = Product.all
    # @categories = Product.category_id.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
