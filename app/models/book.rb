# == Schema Information
#
# Table name: books
#
#  id                 :integer          not null, primary key
#  title              :string           not null
#  description        :text             default([]), not null, is an Array
#  publish_date       :string           not null
#  author_id          :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  publisher          :string           not null
#  cover_file_name    :string
#  cover_content_type :string
#  cover_file_size    :integer
#  cover_updated_at   :datetime
#  cover_url          :string
#

class Book < ApplicationRecord
  validates :title, :description, :publish_date, :author_id, :publisher, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
    class_name: :User

  has_many :shelvings

  has_many :reviews

  has_many :reviewers,
    through: :reviews,
    source: :user 
end
