class AddDietColumnToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :diet, :integer, array:true
  end
end
