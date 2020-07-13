class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'name') 
    @recipe.ingredients.build(name: 'name') 
     
  end

  def create
    @recipe = Recipe.create(rep_params)

  end

  private

  def rep_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
