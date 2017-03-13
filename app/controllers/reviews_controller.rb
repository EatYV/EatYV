class ReviewsController < ApplicationController
  before_action :find_cuisine

  def create
    @review = @cuisine.reviews.new(review_params)
    @review.user_id = current_user.id
    @review.save

    if @review.save
      redirect_to cuisine_path(@cuisine)
    else
      render 'new'
    end
  end

  private
  def find_cuisine
    @cuisine = Cuisine.find(params[:cuisine_id])
  end

  def review_params
    params.require(:review).permit(:grades, :comments)
  end

  if :grades == 5
    return @review_result = 5
  end
end
