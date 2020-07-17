class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: "Ingredient 1")
    @recipe.ingredients.build(name: "Ingredient 2")
  end

  def create
    recipe = Recipe.create(recipe_parmas)
    redirect_to recipe_path(recipe)
  end

  private

  def recipe_parmas
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
