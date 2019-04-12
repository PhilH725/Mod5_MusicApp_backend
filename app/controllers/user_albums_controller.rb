
class UserAlbumsController < ApplicationController

  def create
    @artist = Artist.where(:name => params[:albumData][:artistName]).first_or_create do |artist|
      artist.artist_image = params[:artistData][:images][3]
      artist.bio = params[:artistData][:summary]
    end
    @album = Album.where(:name => params[:albumData][:name], :artist_id => @artist.id).first_or_create do |album|
      album.album_image = params[:albumData][:images][3]
    end

    @trackList = []
    for i in params[:albumData][:tracks]
      song = Song.find_or_create_by(:name => i[:name], :artist_id => @artist.id, :album_id => @album.id)
      @trackList << song
    end

    UserAlbum.create(user_id: params[:user_id], album_id: @album.id)


    render json: {albumData: @album, trackList: @trackList}
  end

  def destroy
    @album_favorite = UserAlbum.find_by(:user_id => params[:user_id], :album_id => params[:album_id])
    @album_favorite.destroy
  end


end
