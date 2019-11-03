# frozen_string_literal: true

class CategoryController < ApplicationController
  def index
    if params[:category_id]
      category = Category.find_by_id(params[:category_id])
      @categories = category.names
    else
      @categories = Category.all
    end
  end
end