class Recipe < ApplicationRecord
    belongs_to :favorite, optional: true
    has_many :recipe_ingredient
    
    has_many :step
end
