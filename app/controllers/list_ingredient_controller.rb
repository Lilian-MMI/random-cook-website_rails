class ListIngredientController < ApplicationController
    def index
        @ingredients = Ingredient.all
    end
end
