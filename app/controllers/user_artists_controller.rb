
class UserArtistsController < ApplicationController

  def create
    UserArtist.create(user_id: params[:user_id], artist_id: params[:artist_id])
  end

end
