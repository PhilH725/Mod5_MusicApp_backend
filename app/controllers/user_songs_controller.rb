
class UserSongsController < ApplicationController

  def create
    @artist = Artist.find_or_create_by(name: params[:songData][:artistName]) do |artist|
      artist.artist_image = params[:artistImage]
      artist.bio = params[:artistData][:summary]
    end
    @album = Album.where(:name => params[:songData][:albumName]).first_or_create do |album|
      album.artist_id = @artist.id
      album.album_image = params[:songData][:images][3]
    end

    @song = Song.where(:name => params[:songData][:name], :artist_id => @artist.id).first_or_create do |song|
                            song.album_id = Album.find_by(name: params[:songData][:albumName]).id
                        end
    UserSong.create(user_id: params[:user_id], song_id: @song.id)

    render json: @song
  end

end
