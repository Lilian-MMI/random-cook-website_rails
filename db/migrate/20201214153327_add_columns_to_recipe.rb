class AddColumnsToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :description, :string
    add_column :recipes, :url, :string
  end
end
