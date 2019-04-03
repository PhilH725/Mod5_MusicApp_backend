
class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render json: @albums
  end

  def show
    @album = Album.find(params[:id])
    render json: @album
  end

end
