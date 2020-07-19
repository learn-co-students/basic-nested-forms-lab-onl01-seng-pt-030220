
class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name:nil)
    @recipe.ingredients.build(quantity:nil)

  end

  def create
    @recipe = Recipe.new(strong_params)
    @recipe.save
  end


  private 

  def strong_params 
  params.require(:recipe).permit(:title, ingredients_attributes:[:name, :quantity])

  end

end
