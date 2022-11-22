class BookingsController < ApplicationController
  def index
    user = current_user
    @bookings = Booking.where(id: user.id)
  end
end
