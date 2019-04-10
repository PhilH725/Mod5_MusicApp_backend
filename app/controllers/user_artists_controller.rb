
class UserArtistsController < ApplicationController

  def create
    @artist = Artist.find_or_create_by(name: params[:artistData][:name])
    UserArtist.find_or_create_by(user_id: params[:user_id], artist_id: @artist.id)
  end

end
