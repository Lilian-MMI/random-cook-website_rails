class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string:label
      t.text:description
      t.string:ingredient
      t.string:url
      t.string:diet

      t.timestamps
    end
  end
end
