# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name)
    @products = Product.order(:name).page params[:page]
  end

  def show
    @category = Category.find(params[:id])
    @products = Product.order(:name).page params[:page]
  end
end
