class ProfileController < ApplicationController
  def index
    @user = current_user
    @rides = current_user.rides
  end

  def show
    @ride = Ride.find(params[:ride_id])
    @bookings = @ride.bookings
  end

  def update
  end
end
