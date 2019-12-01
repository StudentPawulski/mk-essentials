# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :initialize_session
  # before_action :increment_visit_count, only: %i[index cart]
  before_action :load_cart

  def index
    @products = Product.all.page params[:page]
    @categories = Category.order(:name)
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  # GET /products/search_results
  def search_results
    @query = params[:query]
    # @categorysearch = Category.order(:name)
    @productsearch = Product.where('name LIKE ?', "%#{@query}%").where('category_id = ?', params['categoryquery']['category']).page params[:page]
  end

  def show
    # @category = Category.find(params[:id])
    @product = Product.find(params[:id])
  end

  private

  def initialize_session
    # session[:visit_count] ||= 0
    session[:cart] ||= []
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end

  # def increment_visit_count
  #  session[:visit_count] += 1
  #  @visit_count = session[:visit_count]
  # end
end
