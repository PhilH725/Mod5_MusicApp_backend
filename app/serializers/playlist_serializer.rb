
class PlaylistSerializer < ActiveModel::Serializer

  attributes :id, :name, :songs

  def songs
    object.songs.map do |i|
      @song = Song.find(i.id)
      {
        id: @song.id,
        name: @song.name,
        artist: @song.artist.name,
        album: @song.album.name
      }
    end
  end

end
