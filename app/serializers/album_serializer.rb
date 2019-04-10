
class AlbumSerializer < ActiveModel::Serializer

  attributes :id, :name
  has_many :songs

end
