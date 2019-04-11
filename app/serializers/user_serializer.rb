
class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :my_songs, :my_artists, :my_albums, :my_genres
  has_many :playlists

  def my_songs
    object.user_songs.map do |i|
      @song = Song.find(i.song_id)
      @album = Album.find(@song.album_id)
      @artist = Artist.find(@song.artist_id)
      {
        id: @song.id,
        name: @song.name,
        artist: @artist.name,
        album: {
          name: @album.name,
          image: @album.album_image
        }

      }
    end
  end

  def my_artists
    object.user_artists.map do |i|
      @artist = Artist.find(i.artist_id)
      {
        id: @artist.id,
        name: @artist.name,
        image: @artist.artist_image
      }
    end
  end

  def my_albums
    object.user_albums.map do |i|
      @album = Album.find(i.album_id)
      {
        id: @album.id,
        name: @album.name,
        image: @album.album_image,
        songs: Song.all.select{|s| s.album_id == @album.id}.map{|i| {id: i.id, name: i.name, artist: Artist.find(i.artist_id).name}}
      }
    end
  end

  def my_genres
    object.user_genres.map do |i|
      @genre = Genre.find(i.genre_id)
      {
        id: @genre.id,
        name: @genre.name
      }
    end
  end

end
