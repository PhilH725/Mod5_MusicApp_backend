
class PlaylistSerializer < ActiveModel::Serializer

  attributes :id, :name, :songs

  def songs
    object.songs.map do |i|
      @song = Song.find(i.id)
      {
        name: @song.name
      }
    end
  end

end
