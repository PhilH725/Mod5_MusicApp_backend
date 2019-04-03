
class SongSerializer < ActiveModel::Serializer

  attributes :id, :name
  belongs_to :artist
  belongs_to :album
  belongs_to :genre

end
