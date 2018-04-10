class CreateShelves < ActiveRecord::Migration[5.1]
  def change
    create_table :shelves do |t|
      t.string :name, null: false
      t.integer :user_id, null: false
      
      t.timestamps
    end
  end
end
