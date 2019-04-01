
class Genre < ApplicationRecord

  has_many :songs
  has_many :genre_favorites
  has_many :users, through: :genre_favorites
  has_many :artists, through: :songs
  has_many :albums, through: :songs

end
