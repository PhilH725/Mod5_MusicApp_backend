
class AlbumSerializer < ActiveModel::Serializer

  attributes :id, :name, :album_image
  has_many :songs

end
