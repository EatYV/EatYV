class RecipesController < ApplicationController
  before_action :find_cuisine

  def create
    @recipe = @cuisine.recipes.new(cuisine_params)
    @recipe.chef = current_chef
    @recipe.save

    if @recipe.save
      redirect_to cuisine_path(@cuisine)
    else
      render 'new'
    end
  end

  private
  def find_cuisine
    @cuisine = Cuisine.find(params[:cuisine_id])
  end

  def cuisine_params
    params.require(:recipe).permit(:title, :price)
  end
end
