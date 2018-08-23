class BookingsController < ApplicationController



  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @owner_bookings = current_user.owner_bookings
    @owner_watches = current_user.watches
    @customer_bookings = current_user.customer_bookings

  end

end
