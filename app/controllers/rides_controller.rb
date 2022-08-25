class RidesController < ApplicationController
  before_action :set_ride, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @rides = Ride.all
    if params['search']
      @rides = Ride.where(destination: params['search']['query'])
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    if @ride.save
      redirect_to ride_path(@ride)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @ride.update(ride_params)
    redirect_to ride_path(@ride)
  end

  def destroy
    @ride.destroy
    redirect_to rides_path, status: :see_other
  end

  private

  def set_ride
    @ride = Ride.find(params[:id])
  end

  def ride_params
    params.require(:ride).permit(:title, :starting_point, :destination, :image_url, :description, :price, :duration, :food_and_drinks, :magic, :entertainment, :seats, :ride_date, :photo)
  end
end
