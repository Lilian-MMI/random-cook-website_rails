class Recipe < ApplicationRecord
    belongs_to:favorite
    has_many:recipe_ingredient
    
    has_many:step
end
