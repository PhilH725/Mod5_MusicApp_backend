Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :songs
  resources :artists
  resources :albums
  resources :genres
  resources :playlists
  resources :playlist_songs, only: :create
  resources :user_songs, only: :create
  resources :user_artists, only: :create
  resources :user_albums, only: :create
  resources :user_genres, only: :create

  post '/login', to: 'auth#create'
  get '/verify_token', to: 'users#token'
  delete '/user_songs', to: 'user_songs#destroy'
  delete '/user_artists', to: 'user_artists#destroy'
  delete '/user_albums', to: 'user_albums#destroy'
  post '/get_song_url', to: 'users#song'
end
