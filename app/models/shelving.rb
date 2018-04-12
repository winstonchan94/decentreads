# == Schema Information
#
# Table name: shelvings
#
#  id         :integer          not null, primary key
#  book_id    :integer          not null
#  shelf_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shelving < ApplicationRecord
  validates :book_id, :shelf_id, presence: true
  before_save :ensure_individuality

  belongs_to :book

  belongs_to :shelf

  has_one :user,
    through: :shelf

  def ensure_individuality
    user = self.user
    encroaching_defaults = user.shelves.select do |shelf|
      ['Read', 'Currently Reading', 'Want to Read'].include?(shelf.name) &&
      shelf.books.include?(self.book)
    end
    user.shelvings.each do |shelving|
      shelving.destroy if encroaching_defaults.any?{|shelf| shelf.shelvings.include?(shelving)} && shelving.book_id == self.book_id
    end
  end
end
