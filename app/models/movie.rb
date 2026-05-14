class Movie < ApplicationRecord
  has_many :bookmarks # titanic.destroy
  # has_many :lists, through: :bookmarks # movie.lists
end
