
class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def published_playlists
    @playlists = Playlist.all.select{|i| i.published}
    render json: @playlists
  end

  def show
    @playlist = Playlist.find(params[:id])
    render json: @playlist
  end

  def create
    @playlist = Playlist.create(playlist_params)
    render json: @playlist
  end

  def update
    @playlist = Playlist.find(params[:id])

    old_ids = @playlist.songs.map{|s| s.id}
    new_ids = params[:playlist][:songs].map{|i| i[:id]}
    songs_to_add = new_ids.select{|i| !old_ids.include?(i)}
    songs_to_remove = old_ids.select{|i| !new_ids.include?(i)}

    for i in PlaylistSong.where(song_id: songs_to_remove, playlist_id: 22)
      i.destroy
    end

    for i in songs_to_add
      @new_song = PlaylistSong.new(playlist_id: @playlist.id, song_id: i)
      @new_song.save
    end

    @playlist.update(playlist_params)

    render json: @playlist
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    render json: @playlist
  end

  private

  def playlist_params
    params.permit(:user_id, :name, :published, :likes)
  end

end
