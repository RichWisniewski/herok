class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params[:review])
    @review.restaurant_id = params[:restaurant_id]

    #raise @review.inspect

    respond_to do |format|
      if @review.save
        format.html  { redirect_to( root_url,
                    :notice => 'Review was successfully added.') }
      else
        format.html  { render :action => "new" }
      end
    end
  end
  
  
end
