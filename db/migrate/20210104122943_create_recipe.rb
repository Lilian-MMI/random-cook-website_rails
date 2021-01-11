class CreateRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string:label
      t.text:description
      t.string:url
      t.string:diet
      t.string:preparation_time
      t.string:baking_time
      t.string:resting_time
      t.integer:creator

      t.timestamps
    end
  end
end
