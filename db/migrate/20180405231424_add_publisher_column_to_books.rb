class AddPublisherColumnToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :publisher, :string, null: false 
  end
end
