class Movie < ApplicationRecord
  self.table_name = 'wlist_movies'
  has_many :bookmarks, foreign_key: 'wlist_movie_id'

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
