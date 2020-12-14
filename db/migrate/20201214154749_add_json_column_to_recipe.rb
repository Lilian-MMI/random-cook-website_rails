class AddJsonColumnToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :ListIngredient, :json
  end
end
