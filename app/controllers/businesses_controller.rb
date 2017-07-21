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
      @businesses = Business.create(businesse_params)
      json_response(@businesses)
    end

    def update
      @businesses = Business.find(params[:id])
      @businesses.update(businesse_params)
    end

    def destroy
      @businesses = Business.find(params[:id])
      @businesses.destroy
    end


  private
  def json_response(object)
    render json: object, status: :ok
  end

  def business_params
    params.permit(:name, :business_type, :address)
  end
end
