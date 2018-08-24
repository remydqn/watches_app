class WatchesController < ApplicationController

  def home
  end

  def index
    query = params[:watch_address] # query || nil

    if query.nil?
      @watches = Watch.all

    else
      query_to_array = query.split(",") # ["Lyon", " France"]
      @city = query_to_array[0] # "Lyon"
      @watches = Watch.where("address ILIKE ?", "%#{@city}%").order(:name)
    end

    @watches = Watch.where.not(latitude: nil, longitude: nil)
    iconBase = ActionController::Base.helpers.asset_path('gmaps-image.png')
    @markers = @watches.map do |watch|
      {
        lat: watch.latitude,
        lng: watch.longitude,
        icon: iconBase
      }
    end
  end

  def show
    @watch = Watch.find(params[:id])
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

  def destroy
   @watch = Watch.find(params[:id])
   if @watch.destroy
    redirect_to watches_path, notice: 'Watch was successfully deleted.'
   else
    render :show
   end
 end


  private

  def watch_params
      params.require(:watch).permit(:price, :address, :gender, :color, :material, :name, :style, :image, :description, :brand)
    end

end
