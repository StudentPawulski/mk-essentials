# frozen_string_literal: true

class StatusController < ApplicationController
  def index
    # if params[:status_id]
    #  status = Status.find_by_id(params[:status_id])
    #  @statuses = status.name
    # else
    #  @statuses = Status.all
    # end
    @statuses = Status.all
  end
end
