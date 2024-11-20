class BookingsController < ApplicationController
  before_action :set_art, only: [:create]

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.art = @art
    if @booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_art
    @art = Art.find(params[:art_id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :art_id, user_id)
  end
end
