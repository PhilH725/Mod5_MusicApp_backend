
class ApplicationController < ActionController::API

  def get_youtube_id
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

  private

  def secret_key
    "auth"
  end

  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  def decode(token)
    JWT.decode(token, secret_key, true, {algorithm: 'HS256'})[0]
  end

end
