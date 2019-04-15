
class PlaylistSerializer < ActiveModel::Serializer

  attributes :id, :name, :published, :user, :songs

  def user
    @user = User.find(object.user_id)
    {
      user: @user.username
    }
  end

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
