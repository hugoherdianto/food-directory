class RestaurantReviewsController < ApplicationController
  def new
    @restaurant_review = RestaurantReview.new
  end

  def create
    restaurant_review = RestaurantReview.new(review_params)
  end

  def show
    @restaurant_review = RestaurantReview.find(params[:id])
  end

  private def review_params
    params.require(:restaurant_review).permit(:rating, :review)
end
