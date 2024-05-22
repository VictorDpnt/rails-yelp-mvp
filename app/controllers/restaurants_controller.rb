class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show ]

  # GET --> view
  def index
    @restaurants = Restaurant.all

    # render "views/restaurants/index"
  end

  # GET --> view
  def new
    @restaurant = Restaurant.new
    # render "views/restaurants/new"
  end

  # POST --> redirect vers une view
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # GET --> view
  def show
    @restaurant = Restaurant.find(params[:id])
    # @restaurant

  end


  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
