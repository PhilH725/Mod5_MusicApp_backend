
class ArtistSerializer < ActiveModel::Serializer

  attributes :id, :name, :artist_image
  has_many :albums

end
