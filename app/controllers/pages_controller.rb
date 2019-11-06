# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @pages = Page.all
    # @categories = page.category_id.all
  end

  def show
    @page = Page.find(params[:id])
  end
end
