
class PlaylistSerializer < ActiveModel::Serializer

  attributes :id, :name, :published, :songs

  def songs
    object.songs.map do |i|
      @song = Song.find(i.id)
      {
        id: @song.id,
        name: @song.name,
        artist: @song.artist.name,
        album: @song.album.name,
        albumImage: @song.album.album_image
      }
    end
  end

end
