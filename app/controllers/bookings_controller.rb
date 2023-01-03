class BookingsController < ApplicationController
  def index
    user = current_user
    @bookings = Booking.where(user_id: user.id)
  end

  def new
    @floaty = Floaty.find(params[:floaty_id])
    @booking = Booking.new
  end

  def create
    @floaty = Floaty.find(params[:floaty_id])
    @booking = Booking.new(booking_params)
    @booking.floaty = @floaty
    @booking.user = current_user
    if @booking.save
      redirect_to floaty_path(@floaty)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
