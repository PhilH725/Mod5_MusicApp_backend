
class Song < ApplicationRecord

  belongs_to :genre
  belongs_to :artist
  belongs_to :album
  has_many :song_favorites
  has_many :users, through: :user_songs
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

end
