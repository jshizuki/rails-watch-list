class Bookmark < ApplicationRecord
  self.table_name = 'wlist_bookmarks'
  belongs_to :movie, foreign_key: 'wlist_movie_id'
  belongs_to :list, foreign_key: 'wlist_list_id'

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'has already been bookmarked in this list' }
end
