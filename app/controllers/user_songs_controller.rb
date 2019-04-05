
class UserSongsController < ApplicationController

  def create
    UserSong.create(user_id: params[:user_id], song_id: params[:song_id])
  end

end
