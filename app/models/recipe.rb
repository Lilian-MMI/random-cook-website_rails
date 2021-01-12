class Recipe < ApplicationRecord
    has_many :favorites
    has_many :recipe_ingredients
    has_many :steps
    belongs_to :user, optional: true

    accepts_nested_attributes_for :recipe_ingredients, :steps, :favorites
end
