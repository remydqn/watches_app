class WatchesController < ApplicationController
  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
    if @watch.save!
      redirect_to @watch, notice: 'Watch was successfully created.'
    else
      render :new
    end
  end

  private

  def watch_params
      params.require(:watch).permit(:price, :location, :gender, :color, :material, :name, :image, :description, :brand)
    end

end
