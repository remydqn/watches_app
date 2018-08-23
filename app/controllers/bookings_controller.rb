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
    @booking = Booking.new(params[:id])
    @booking.user = current_user
    @booking.watch = @watch
    @booking.save!
    redirect_to @watches, notice: 'Watch was successfully book.'
  end

  private

  def watch_params
      params.require(:booking).permit(:price, :image, :description, :brand)
    end

end
