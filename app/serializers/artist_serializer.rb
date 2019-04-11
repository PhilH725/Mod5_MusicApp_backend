
class ArtistSerializer < ActiveModel::Serializer

  attributes :id, :name, :artist_image, :bio
  has_many :albums

end
