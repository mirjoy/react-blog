class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      flash[:success] = "Recipe has been created"
      redirect_to :back
    else
      flash[:warning] = "Recipe failed to save"
      redirect_to :back
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,
                                   :directions,
                                   :baking_time,
                                   :baking_temperature,
                                   :servings)
  end
end
