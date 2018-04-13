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

  validates :book_id, uniqueness: { scope: :shelf_id }

  attr_accessor :shelf_to_remove_from


  belongs_to :book

  belongs_to :shelf

  has_one :user,
    through: :shelf

  def ensure_individuality
    defaults = ['Read', 'Currently Reading', 'Want to Read']
    @do_remove = false
    user = self.user
    encroaching_defaults = user.shelves.select do |shelf|
      defaults.include?(shelf.name) &&
      shelf.books.include?(self.book) &&
      shelf.id != self.shelf.id &&
      defaults.include?(self.shelf.name)
    end

    user.shelvings.each do |shelving|
      if (encroaching_defaults.any?{|shelf| shelf.shelvings.include?(shelving)} &&
        shelving.book_id == self.book_id &&
        defaults.include?(shelving.shelf.name))
          @shelf_to_remove_from = shelving.shelf_id
          shelving.destroy
      end
    end
  end
end
