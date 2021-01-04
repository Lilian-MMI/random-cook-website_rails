class Favorite < ApplicationRecord
    belongs_to:user
    has_one:recipe
end
