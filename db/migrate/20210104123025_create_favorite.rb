class CreateFavorite < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.belongs_to:user
      t.belongs_to:recipe
      
      t.timestamps
    end
  end
end
