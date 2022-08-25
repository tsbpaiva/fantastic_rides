class BookingsController < ApplicationController
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

  end

  def index
    @ride = Ride.find(params[:ride_id])
    @bookings = @ride.bookings
  end

  def show

  end
end
