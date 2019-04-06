
class User < ApplicationRecord

  has_many :playlists
  has_many :user_genres
  has_many :user_artists
  has_many :user_albums
  has_many :user_songs
  has_many :genres, through: :user_genres
  has_many :artists, through: :user_artists
  has_many :albums, through: :user_albums
  has_many :songs, through: :user_songs

  has_secure_password

end
