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
      name: params[:recipe][:name],
      recipe_type_id: params[:recipe][:recipe_type_id],
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

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    success = @recipe.update(
      name: params[:recipe][:name],
      recipe_type_id: params[:recipe][:recipe_type_id],
      cuisine: params[:recipe][:cuisine],
      ingredients: params[:recipe][:ingredients],
      cook_method: params[:recipe][:cook_method],
      cook_time: params[:recipe][:cook_time],
    )

    return redirect_to recipe_path(@recipe.id) if success

    render :edit
  end
end