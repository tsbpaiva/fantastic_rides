class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @ride = Ride.find(params[:ride_id])
    @booking.ride = @ride
    @booking.user = current_user

    if @booking.save
      redirect_to ride_bookings_path(@ride)
    else
      render "new"

    end
  end

  def destroy
  end

  def update
  end

  def index
  end

  def show
  end
end
