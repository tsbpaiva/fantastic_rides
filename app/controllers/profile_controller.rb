class ProfileController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @rides = current_user.rides
    @bookings = current_user.bookings
  end
end
