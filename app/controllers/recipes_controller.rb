class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    2.times do 
      @recipe.ingredients.build()
    end
    
  end

  def create
    Recipe.create(recipes_params)
  end

  private

  def recipes_params
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
  end
end
