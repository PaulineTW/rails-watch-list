class Movie < ApplicationRecord
  has_one_attached :photo
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
