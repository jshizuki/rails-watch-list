class List < ApplicationRecord
  # When you delete a list, you should delete all associated bookmarks
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
