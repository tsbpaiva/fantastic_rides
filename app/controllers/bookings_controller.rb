class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @booking = Booking.new
    @ride = Ride.find(params[:ride_id])
    @booking.ride = @ride
    @booking.user = current_user

    if @booking.save
      redirect_to rides_path
    else
      render "new"
    end
  end

  def destroy
  end

  def update

    @booking = Booking.find(params[:id])
    @booking.update(status: "confirmed")
    redirect_to ride_bookings_path

  end

  def index
    @ride = Ride.find(params[:ride_id])
    @bookings = @ride.bookings
  end

  def show

  end
end
