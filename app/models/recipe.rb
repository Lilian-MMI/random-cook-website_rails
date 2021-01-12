class Recipe < ApplicationRecord
    has_many :favorites
    has_many :recipe_ingredients
    has_many :steps

    accepts_nested_attributes_for :recipe_ingredients, :steps, :favorites
end
