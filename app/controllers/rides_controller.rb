class RidesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    @ride.save
    #redirect_to ride_path(@ride)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def ride_params
    params.require(:ride).permit(:title, :starting_point, :destination, :image_url, :description, :price, :duration, :food_and_drinks, :magic, :entertainment, :seats, :ride_date)
  end
end
