
class UserGenresController < ApplicationController

  def create
    UserGenre.create(user_id: params[:user_id], genre_id: params[:genre_id])
  end

end
