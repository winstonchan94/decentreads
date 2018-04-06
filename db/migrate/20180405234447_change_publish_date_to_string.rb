class ChangePublishDateToString < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :publish_date, :string, null: false 
  end
end
