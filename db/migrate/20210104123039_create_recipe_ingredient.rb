class CreateRecipeIngredient < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_ingredients do |t|
      t.belongs_to:recipes
      t.belongs_to:ingredients
      t.integer:quantity
      t.string:untity
      
      t.timestamps
    end
  end
end
