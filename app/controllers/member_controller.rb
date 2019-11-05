# frozen_string_literal: true

class MemberController < ApplicationController
  def index
    @members = Member.all
  end

  def show; end
end
