class RestaurantsController < ApplicationController
  before_action :restaurant_params, only: [:show, :edit]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
  end


private
  def restaurant_params
    @restaurant = Restaurant.find(params[:id])
  end

end
