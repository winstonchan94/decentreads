class Book < ApplicationRecord
  validates :title, :description, :publish_date, :author_id, :publisher, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
    class_name: :User 
end
