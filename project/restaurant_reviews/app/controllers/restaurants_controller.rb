class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new (params[:restaurant])

    respond_to do |format|
      if @restaurant.save
        format.html  { redirect_to( root_url,
                    :notice => 'Restaurant was successfully added.') }
      else
        format.html  { render :action => "new" }
      end
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where("restaurant_id = ?", params[:id])
  end
end
