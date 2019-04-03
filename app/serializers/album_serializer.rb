
class AlbumSerializer < ActiveModel::Serializer

  attributes :id, :name, :release_year
  has_many :songs

end
