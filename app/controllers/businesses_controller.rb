class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
    json_response(@quotes)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
