
class PlaylistSerializer < ActiveModel::Serializer

  attributes :id, :name, :songs

  def songs
    object.songs
  end

end
