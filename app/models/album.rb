
class Album < ApplicationRecord

  belongs_to :artist
  has_many :songs
  has_many :album_favorites
  has_many :users, through: :album_favorites
  has_many :genres, through: :songs

end
