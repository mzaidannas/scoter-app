class ListingsController < ApplicationController
  def new
    @makers = Maker.all.order(:name) || []
    @listing = Listing.create
    @cities = CS.states(:pk).keys.map{ |state| CS.cities(state, :pk) }.flatten
  end

  def create
    render json: params
  end

  def index
    @cities = CS.states(:pk).keys.map{ |state| CS.cities(state, :pk) }.flatten
    @listings = Listing.where.not(title: nil).includes(:images).order('created_at DESC')
    @makers = Maker.all
  end

  def update
    @listing = Listing.find_or_create_by(id: params[:id])
    @listing.update(create_params)
    # return render json: @listing
    Listing.where(title: nil).delete_all
    # return render json: params
    redirect_to @listing, notice: 'Your Ad is Live Now!!!'
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def images_uploading
    # listing = Listing.find(params[:listing_id])
    image = Image.create(image_url: params[:file], listing_id: params[:listing_id])
    respond_to do |format|
      format.json { render json: { status: 200 } }
    end
  end

  def search
    @listings = Listing.search params
    respond_to do |format|
      format.js
      # format.html
    end
  end

  private

  def create_params
    params.require(:listing).permit(:id, :title, :description, :price, :model, :maker_id, :engine, :color, :miles, :mileage, :mobile, :city, :address, :person_name)
  end
end
