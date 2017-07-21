class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
    # @businesses = Business.name_search(name)
    json_response(@businesses)
  end

  def show
      @businesses = Business.find(params[:id])
      json_response(@businesses)
    end

    def create
      @businesses = Business.create!(businesses_params)
      json_response(@business)
    end

    def update
      @businesses = Business.find(params[:id])
      @businesses.update(businesses_params)
    #   if @business.update! (business_params)
    #     render status: 200, json: {
    #     message: "This business has been updated."
    #   }
      # end
    end

    def destroy
      @businesses = Business.find(params[:id])
      @businesses.destroy
  #     if @business.destroy!
  #     render status: 200, json: {
  #       message: "This business has been deleted."
  #     }
  # end
    end


  private
  def json_response(object, status = :ok)
  render json: object.as_json, status: status
end

  def business_params
    params.permit(:name, :business_type, :address)
  end
end
