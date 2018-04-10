# == Schema Information
#
# Table name: shelves
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shelf < ApplicationRecord
  validates :name, :user_id, presence: true

  belongs_to :user

  has_many :shelvings

  has_many :books,
    through: :shelvings,
    source: :book 

end
