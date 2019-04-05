
class UserAlbumsController < ApplicationController

  def create
    UserAlbum.create(user_id: params[:user_id], album_id: params[:album_id])
  end

end
