class Bookmark < ApplicationRecord
  # Note that comments refer to the code before pulling into single-db
  # self.table_name = 'wlist_bookmarks'
  # belongs_to :movie, foreign_key: 'wlist_movie_id'
  belongs_to :movie
  # belongs_to :list, foreign_key: 'wlist_list_id'
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'has already been bookmarked in this list' }
  # validates :wlist_movie_id, uniqueness: { scope: :wlist_list_id, message: 'has already been bookmarked in this list' }
end
