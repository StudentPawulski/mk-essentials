# frozen_string_literal: true

class ProvinceController < ApplicationController
  def index
    @provinces = Province.all
  end

  def show; end
end
