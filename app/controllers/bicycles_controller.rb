class BicyclesController < ApplicationController

  def index
    bicycle = Bicycle.all
    render json: bicycle, status: :ok

  end

  def create
    bicycle = Bicycle.create(bicycle_params)
    render json: bicycle, status: :created
  end

  def show
   bicycle = Bicycle.find(params[:id])
    render json: bicycle, status: :ok
  end

  private

    def bicycle_params
      params.require(:bicycle)
        .permit(:title, :price, :longitude, :latitude,
          :description, :available, :image_url)
    end
end
