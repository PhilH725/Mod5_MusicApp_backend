
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

  def create
    @user = User.create(username: params[:username], password: params[:password])
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

  def song
    main_url = 'https://www.youtube.com/results?search_query='
    search_url = (params[:songName].split(' ') + params[:artistName].split(' ')).join('+')
    url = main_url + search_url
    encoding_options = {:invalid => :replace, :undef => :replace, :replace => '', :universal_newline => true}
    url = url.encode(Encoding.find('ASCII'), encoding_options)

    doc = Nokogiri::HTML(open(url))
    string_doc = doc.to_s
    @id = string_doc.split("watch?v=")[1][0...25].split('"')[0]

    render json: {id: @id}
  end

end
