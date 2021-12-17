class Movie < ApplicationRecord
  has_one_attached :photo
  has_many :lists, through: :bookmarks
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
