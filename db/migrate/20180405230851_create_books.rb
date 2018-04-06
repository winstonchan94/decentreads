class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.date :publish_date, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_index :books, :author_id
  end
end
