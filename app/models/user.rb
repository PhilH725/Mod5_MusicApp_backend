
class User < ApplicationRecord

  has_many :playlists
  has_many :genre_favorites
  has_many :artist_favorites
  has_many :album_favorites
  has_many :song_favorites
  has_many :genres, through: :genre_favorites
  has_many :artists, through: :artist_favorites
  has_many :albums, through: :album_favorites
  has_many :songs, through: :song_favorites

end
