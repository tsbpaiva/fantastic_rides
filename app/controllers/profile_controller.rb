class ProfileController < ApplicationController
  def index
    @user = current_user
    @rides = current_user.rides
  end
end
