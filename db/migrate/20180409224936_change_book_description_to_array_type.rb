class ChangeBookDescriptionToArrayType < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :description, :text, array: true, default: [], using: "(string_to_array(description, ','))"
  end
end
