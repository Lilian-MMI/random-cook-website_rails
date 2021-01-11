class Ingredient < ApplicationRecord
    has_many :recipe_ingredient

    accepts_nested_attributes_for :recipe_ingredient

end
