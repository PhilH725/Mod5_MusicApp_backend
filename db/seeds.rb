# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Genre.destroy_all
Artist.destroy_all
Album.destroy_all
Song.destroy_all
Playlist.destroy_all
UserSong.destroy_all
UserArtist.destroy_all
UserAlbum.destroy_all
UserGenre.destroy_all
PlaylistSong.destroy_all

phil = User.create(username: 'Phil')

g1 = Genre.create(name: 'Punk Rock')
g2 = Genre.create(name: 'Pop')
g3 = Genre.create(name: 'Ska')

ar1 = Artist.create(name: 'Bad Religion')
ar2 = Artist.create(name: 'Rise Against')
ar3 = Artist.create(name: 'Backstreet Boys')
ar4 = Artist.create(name: 'One Direction')
ar5 = Artist.create(name: 'Streetlight Manifesto')

al1 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al2 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al3 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al4 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al5 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al6 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al7 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al8 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al9 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
al10 = Album.create(name: 'No Control', release_year: 1994, artist_id: ar1.id)
