class List < ApplicationRecord
  # Note that comments refer to the code before pulling into single-db
  # When you delete a list, you should delete all associated bookmarks
  self.table_name = 'wlist_lists'
  has_many :bookmarks, dependent: :destroy, foreign_key: 'wlist_list_id'
  # has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, foreign_key: 'wlist_list_id'
  # has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
