
class UserSerializer < ActiveModel::Serializer

  attributes :id, :username
  has_many :user_genres
  has_many :user_artists
  has_many :user_albums
  has_many :user_songs
  has_many :playlists

end
