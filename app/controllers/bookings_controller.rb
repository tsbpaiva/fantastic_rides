class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @ride = Ride.find(params[:ride_id])
    @booking.ride = @ride
    @booking.user = current_user
    @booking.save
  end

  def destroy
  end

  def update
    raise
  end

  def index
    raise
  end

  def show
  end
end
