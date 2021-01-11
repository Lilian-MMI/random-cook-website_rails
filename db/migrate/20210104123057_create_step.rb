class CreateStep < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.integer:recipe_id
      t.integer:step_number
      t.text:description

      t.timestamps
    end
  end
end
