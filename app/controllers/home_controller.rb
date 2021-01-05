class HomeController < ApplicationController
  def index
      @recipes = Recipe.all
      @recipeIngredients = RecipeIngredient.all
      @ingredients = Ingredient.all
      @steps = Step.all
  end
end
