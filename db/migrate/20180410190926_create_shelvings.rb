class CreateShelvings < ActiveRecord::Migration[5.1]
  def change
    create_table :shelvings do |t|
      t.integer :book_id, null: false
      t.integer :shelf_id, null: false

      t.timestamps
    end
  end
end
