# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
    # @categories = Product.category_id.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
