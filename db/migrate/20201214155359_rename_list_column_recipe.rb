class RenameListColumnRecipe < ActiveRecord::Migration[6.1]
  def change
    change_table :recipes do |t|
      t.rename :ListIngredient, :listIngredient
  end
end
end
