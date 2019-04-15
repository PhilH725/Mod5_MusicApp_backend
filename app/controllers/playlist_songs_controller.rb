
class PlaylistSongsController < ApplicationController

  def create
    songData = []
    params[:songs].each do |i|
      song = Song.find(i[:id])
      PlaylistSong.create(playlist_id: params[:playlist_id], song_id: song.id)
      i = {id: song.id, name: song.name, artist: song.artist.name, album: song.album.name, albumImage: song.album.album_image}
      songData << i
    end
    render json: songData

  end

end
