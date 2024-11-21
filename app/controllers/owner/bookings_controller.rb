class Owner::BookingsController < ApplicationController
  def index
    # vérifier synthaxe de where dans le cours
    @bookings = Booking.where(user: current_user)
  end

  def update
    raise
    @booking = Restaurant.find(params[:id])
    @booking.update(params[:booking])
  end

end
