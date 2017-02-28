class RecipesController < ApplicationController
  before_action :find_cuisine
  before_action :find_recipe, only: [:destroy, :edit, :update]

  def create
    @recipe = @cuisine.recipes.new(recipe_params)
    @recipe.chef = current_chef
    @recipe.save

    if @recipe.save
      redirect_to cuisine_path(@cuisine)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to cuisine_path(@cuisine)
    else
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy
    redirect_to cuisine_path(@cuisine)
  end

  private
  def find_cuisine
    @cuisine = Cuisine.find(params[:cuisine_id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :price)
  end

  def find_recipe
    @recipe = @cuisine.recipes.find(params[:id])
  end
end
