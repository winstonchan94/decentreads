# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  book_id    :integer          not null
#  user_id    :integer          not null
#  rating     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  validates :body, :book_id, :user_id, :rating, presence: true
  validates :book_id, uniqueness: {scope: :user_id}

  belongs_to :user
  belongs_to :book

  attr_accessor :editable



  def editable
    current_user == self.user
  end
end
