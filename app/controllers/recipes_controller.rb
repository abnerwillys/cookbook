class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    # The form data come inside of params
    @recipe = Recipe.new(
      name: [:name],
      recipe_type: params[:recipe][:recipe_type],
      cuisine: params[:recipe][:cuisine],
      ingredients: params[:recipe][:ingredients],
      cook_method: params[:recipe][:cook_method],
      cook_time: params[:recipe][:cook_time],
    )

    if @recipe.save
      return redirect_to recipe_path(@recipe.id)
    end

    render :new
  end
end