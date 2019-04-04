
class PlaylistSongsController < ApplicationController

  def create
    params[:songs].each do |i|
      PlaylistSong.create(playlist_id: params[:playlist_id], song_id: i[:id])
    end
  end

end
