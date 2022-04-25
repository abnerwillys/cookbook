class RecipeTypesController < ApplicationController
  def new
    @recipe_type = RecipeType.new
  end

  def create
    # The form data come inside of params
    @recipe_type = RecipeType.new(name: params[:recipe_type][:name])

    if @recipe_type.save
      flash[:notice] = 'Recipe type registered successfully!'
      return redirect_to(new_recipe_type_path)
    end

    render :new
  end
end