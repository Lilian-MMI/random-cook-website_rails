class CreateStep < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.integer:step_number
      t.text:description
      t.belongs_to:recipe

      t.timestamps
    end
  end
end