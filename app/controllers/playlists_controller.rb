
class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def show
    @playlist = Playlist.find(params[:id])
    render json: @playlist
  end

  def create
    # byebug
    @playlist = Playlist.create(playlist_params)
    # byebug
    render json: @playlist
  end

  private

  def playlist_params
    params.permit(:user_id, :name)
  end

end
