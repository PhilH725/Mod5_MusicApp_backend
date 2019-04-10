
class UserAlbumsController < ApplicationController

  def create
    # byebug
    @artist = Artist.find_or_create_by(name: params[:albumData][:artistName])
    @album = Album.where(:name => params[:albumData][:name], :artist_id => @artist.id).first_or_create do |album|
                            album.album_image = params[:albumData][:images][3]
                        end

    UserAlbum.create(user_id: params[:user_id], album_id: @album.id)
  end

end
