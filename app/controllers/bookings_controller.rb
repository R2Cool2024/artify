class BookingsController < ApplicationController
  before_action :set_art, only: [:create]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.art = @art
    @booking.status = "pending"
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
    params.require(:booking).permit(:start_date, :end_date)
  end
end
