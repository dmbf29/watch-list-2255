class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks # action.movies
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end

# action.destroy
