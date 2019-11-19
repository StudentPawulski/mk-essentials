# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all.page params[:page]
    # @categories = Product.category_id.all
  end

  # GET /products/search_results
  def search_results
    @query = params[:query]
    # @categorysearch = Category.order(:name)
    @productsearch = Product.where('name LIKE ?', "%#{@query}%").where('category_id = ?', params['categoryquery']['category']).page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end
end
