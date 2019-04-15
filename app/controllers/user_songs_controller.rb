
class UserSongsController < ApplicationController

  def create
    if params[:songData][:albumName].nil?
      params[:songData][:albumName] = "none"
      albumImage = "https://lastfm-img2.akamaized.net/i/u/300x300/35ecb4f7affe489991e91d13f0d00485.png"
    else
      albumImage = params[:songData][:images][3]
    end

    @artist = Artist.find_or_create_by(name: params[:songData][:artistName]) do |artist|
      artist.artist_image = params[:artistData][:images][3]
      artist.bio = params[:artistData][:summary]
    end

    @album = Album.where(:name => params[:songData][:albumName]).first_or_create do |album|
      album.artist_id = @artist.id
      album.album_image = albumImage
    end

    @song = Song.where(:name => params[:songData][:name], :artist_id => @artist.id).first_or_create do |song|
                            song.album_id = Album.find_by(name: params[:songData][:albumName]).id
                        end
    UserSong.create(user_id: params[:user_id], song_id: @song.id)

    render json: @song
  end

  def destroy
    @song_favorite = UserSong.find_by(:user_id => params[:user_id], :song_id => params[:song_id])
    @song_favorite.destroy
  end

end

#artist created through fave song/artist have no bio until refresh
