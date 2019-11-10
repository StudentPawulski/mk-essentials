# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @categories = Product.category_id.all
  end

  # GET /products/search_results
  def search_results
    @query = params[:query]
    @productsearch = Product.where(name: @query)
  end

  def show
    @product = Product.find(params[:id])
  end
end
