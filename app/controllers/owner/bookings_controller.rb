class Owner::BookingsController < ApplicationController
  def index
    # vérifier synthaxe de where dans le cours
    @bookings = Booking.joins(:art).where(arts: { owner: current_user })
  end

  def updateDecline
    @booking = Booking.find(params[:id])
    @booking.status = Booking::STATUS[1]
    @booking.save!
    redirect_to owner_bookings_path
  end

  def updateConfirm
    @booking = Booking.find(params[:id])
    @booking.status = Booking::STATUS[2]
    @booking.save!
    redirect_to owner_bookings_path
  end
end
