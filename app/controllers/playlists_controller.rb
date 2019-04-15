
class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def published_playlists
    @playlists = Playlist.all.select{|i| !i.published}
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
    params.permit(:user_id, :name, :published)
  end

end
