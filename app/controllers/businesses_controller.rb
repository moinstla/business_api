class BusinessesController < ApplicationController

  def index
    if name = params[:name]
      @businesses = Business.name_search(name)
    elsif params[:random]
      @businesses = Business.random
    elsif page = params[:page]
      @businesses = Business.page
    else
      @businesses = Business.all
    end
    json_response(@businesses)
  end

  def show
      business = Business.find(params[:id])
      json_response(business)
    end

    def create
      @business = Business.create!(business_params)
      json_response(@business)
    end

    def update
      @business = Business.find(params[:id])
      if @business.update!(business_params)
        render status: 200, json: {
        message: "This business has been updated."
      }
      end
    end

    def destroy
      @business = Business.find(params[:id])
      if @business.destroy!
      render status: 200, json: {
        message: "This business has been deleted."
      }
      end
    end


  private
  def json_response(object, status = :ok)
  render json: object.as_json, status: status
end

  def business_params
    params.permit(:name, :business_type, :address)
  end
end
