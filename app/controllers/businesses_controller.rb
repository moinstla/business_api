class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
    json_response(@businesses)
  end

  def show
      @businesse = Business.find(params[:id])
      json_response(@businesses)
    end

    def create
      @businesses = Business.create!(businesse_params)
      json_response(@businesses, :created)
      render status: 200, json: {
     message: "This business has been created."
     }
    end

    def update
      @businesses = Business.find(params[:id])
      @businesses.update(businesse_params)
      render status: 200, json: {
     message: "This business has been updated."
     }
    end

    def destroy
      @businesses = Business.find(params[:id])
      @businesses.destroy
      render status: 200, json: {
     message: "This business has been deleted."
     }
    end


  private
  def json_response(object)
    render json: object, status: :ok
  end

  def business_params
    params.permit(:name, :business_type, :address)
  end
end
