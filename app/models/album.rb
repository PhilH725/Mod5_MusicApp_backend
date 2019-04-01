
class Album < ApplicationRecord

  belongs_to :artist
  has_many :songs
  has_many :album_favorites
  has_many :users, through: :user_albums
  has_many :genres, through: :songs

end
