
class UserArtistsController < ApplicationController

  def create

    @artist = Artist.where(:name => params[:artistData][:name]).first_or_create do |artist|
      artist.artist_image = params[:artistData][:images][3]
    end

    UserArtist.find_or_create_by(user_id: params[:user_id], artist_id: @artist.id)
    
    render json: @artist
  end

end
