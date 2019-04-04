Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :songs
  resources :artists
  resources :albums
  resources :genres
  resources :playlists
end
