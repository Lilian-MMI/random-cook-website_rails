class RenameFieldRecipeIngredients < ActiveRecord::Migration[6.1]
  def change
      change_table :recipe_ingredients do |t|
        t.rename :recipes_id, :recipe_id
        t.rename :ingredients_id, :ingredient_id
    end
  end
end
