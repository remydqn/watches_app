class WatchesController < ApplicationController

  def home
  end

  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
    @booking = Booking.new
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    if @watch.save!
      redirect_to @watch, notice: 'Watch was successfully created.'
    else
      render :new
    end
  end

  def edit
    @watch = Watch.find(params[:id])
  end

  def update
    @watch = Watch.find(params[:id])
    if @watch.update(watch_params)
      redirect_to watch_path(@watch)
    else
      render :edit
    end
  end

  private

  def watch_params
      params.require(:watch).permit(:price, :location, :gender, :color, :material, :name, :style, :image, :description, :brand)
    end

end
