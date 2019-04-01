
class Artist < ApplicationRecord

  has_many :albums
  has_many :songs
  has_many :artist_favorites
  has_many :users, through: :artist_favorites
  has_many :genres, through: :songs

end
