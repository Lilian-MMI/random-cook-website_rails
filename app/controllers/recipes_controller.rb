class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @recipeIngredients = RecipeIngredient.where(recipe_id: @recipe)
    @ingredients = Ingredient.where(id: @recipeIngredients)
    @steps = Step.where(recipe_id: @recipe)
  end
end
