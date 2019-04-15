
require 'nokogiri'
require 'open-uri'

class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def token
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @user
    end
  end

  def hi
    byebug
  end

  def song
    # byebug
    main_URL = 'https://www.youtube.com/results?search_query='
    search_URL = (params[:songName].split(' ') + params[:artistName].split(' ')).join('+')
    doc = Nokogiri::HTML(open(main_URL + search_URL))
    string_doc = doc.to_s
    @id = string_doc.split("watch?v=")[1][0...25].split('"')[0]
    # byebug

    # document.querySelector('.yt-simple-endpoint.style-scope.ytd-video-renderer')
    # @id = 'hi'
    render json: {id: @id}
  end

end
