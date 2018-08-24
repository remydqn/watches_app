class BookingsController < ApplicationController



  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @owner_bookings = current_user.owner_bookings
    @owner_watches = current_user.watches
    @customer_bookings = current_user.customer_bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.watch = Watch.find(params[:watch_id])
    @booking.save
    redirect_to booking_path(@booking), notice: 'Watch was successfully book.'
  end

  private

  def booking_params
      params.require(:booking).permit(:start_at)
    end

end
