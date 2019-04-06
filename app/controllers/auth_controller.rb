
class AuthController < ApplicationController

  def create
    @user = User.find_by(username: 'Phil')
    if @user && @user.authenticate(params[:password])
      token = encode({user_id: @user.id})
      render json: {
        message: "Authed",
        user: @user,
        token: token
      }, status: :accepted
    else
      render json: {
        message: "wrong auth"
      }, status: :unauthorized
    end
  end

end
