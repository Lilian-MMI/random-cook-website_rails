class RecipeRandomController < ApplicationController
  def index
    @recipes = Recipe.all
    @count = Recipe.count + 1
    @random = rand(1...@count)
  end
end
