class ReviewsController < ApplicationController
  before_action :find_cuisine

  def create
    @review = @cuisine.reviews.new(review_params)
    @review.user = current_user
    @review.save

    if @review.save
      redirect_to cuisine_path(@cuisine)
    else
      #render 'new'
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end
  end

  private
  def find_cuisine
    @cuisine = Cuisine.find(params[:cuisine_id])
  end

  def review_params
    params.require(:review).permit(:grades, :comments)
  end
end
