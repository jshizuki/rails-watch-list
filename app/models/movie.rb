class Movie < ApplicationRecord
  # Checked for single-db
  # self.table_name = 'wlist_movies'
  # has_many :bookmarks, foreign_key: 'wlist_movie_id'
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
