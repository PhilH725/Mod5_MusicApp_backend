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
g4 = Genre.create(name: 'Pop Punk')
g5 = Genre.create(name: 'Metal')

ar1 = Artist.create(name: 'Bad Religion')
ar2 = Artist.create(name: 'Rise Against')
ar3 = Artist.create(name: 'Backstreet Boys')
ar4 = Artist.create(name: 'One Direction')
ar5 = Artist.create(name: 'Streetlight Manifesto')
ar6 = Artist.create(name: 'Blink 182')
ar7 = Artist.create(name: 'The Offspring')
ar8 = Artist.create(name: 'Metallica')

al1 = Album.create(name: 'No Control', release_year: 1992, artist_id: ar1.id)
al2 = Album.create(name: 'The Process of Belief', release_year: 2004, artist_id: ar1.id)
al3 = Album.create(name: 'The Sufferer and the Witness', release_year: 2008, artist_id: ar2.id)
al4 = Album.create(name: 'Appeal to Reason', release_year: 2006, artist_id: ar2.id)
al5 = Album.create(name: 'Never Gone', release_year: 2004, artist_id: ar3.id)
al6 = Album.create(name: 'Millenium', release_year: 1999, artist_id: ar3.id)
al7 = Album.create(name: 'Up All Night', release_year: 2010, artist_id: ar4.id)
al8 = Album.create(name: 'Take Me Home', release_year: 2012, artist_id: ar4.id)
al9 = Album.create(name: 'The Hands That Thieve', release_year: 2012, artist_id: ar5.id)
al10 = Album.create(name: 'Everything Goes Numb', release_year: 2004, artist_id: ar5.id)
al11 = Album.create(name: 'Enema of the State', release_year: 2004, artist_id: ar6.id)
al12 = Album.create(name: 'Take Off Your Pants and Jacket', release_year: 2002, artist_id: ar6.id)
al13 = Album.create(name: 'Conspiracy of One', release_year: 2001, artist_id: ar7.id)
al14 = Album.create(name: 'Splinter', release_year: 2005, artist_id: ar7.id)
al15 = Album.create(name: 'Metallica', release_year: 1991, artist_id: ar8.id)

s1 = Song.create(name: 'Henchman', album_id: al1.id, artist_id: ar1.id, genre_id: g1.id)
s2 = Song.create(name: 'I Want to Conquer the World', album_id: al1.id, artist_id: ar1.id, genre_id: g1.id)
s3 = Song.create(name: 'Epiphany', album_id: al2.id, artist_id: ar1.id, genre_id: g1.id)
s4 = Song.create(name: 'The Defense', album_id: al2.id, artist_id: ar1.id, genre_id: g1.id)
s5 = Song.create(name: 'Injection', album_id: al3.id, artist_id: ar2.id, genre_id: g1.id)
s6 = Song.create(name: 'The Good Left Undone', album_id: al3.id, artist_id: ar2.id, genre_id: g1.id)
s7 = Song.create(name: 'Savior', album_id: al4.id, artist_id: ar2.id, genre_id: g1.id)
s8 = Song.create(name: 'Re-Education Through Labor', album_id: al4.id, artist_id: ar2.id, genre_id: g1.id)
s9 = Song.create(name: 'Incomplete', album_id: al5.id, artist_id: ar3.id, genre_id: g2.id)
s10 = Song.create(name: 'I Still', album_id: al5.id, artist_id: ar3.id, genre_id: g2.id)
s11 = Song.create(name: 'I Want It That Way', album_id: al6.id, artist_id: ar3.id, genre_id: g2.id)
s12 = Song.create(name: 'Drowning', album_id: al6.id, artist_id: ar3.id, genre_id: g2.id)
s13 = Song.create(name: 'I Wish', album_id: al7.id, artist_id: ar4.id, genre_id: g2.id)
s14 = Song.create(name: 'Tell Me A Lie', album_id: al7.id, artist_id: ar4.id, genre_id: g2.id)
s15 = Song.create(name: 'Nobody Compares', album_id: al8.id, artist_id: ar4.id, genre_id: g2.id)
s16 = Song.create(name: 'Heart Attack', album_id: al8.id, artist_id: ar4.id, genre_id: g2.id)
s17 = Song.create(name: 'The Hands That Thieve', album_id: al9.id, artist_id: ar5.id, genre_id: g3.id)
s18 = Song.create(name: 'Ungrateful', album_id: al9.id, artist_id: ar5.id, genre_id: g3.id)
s19 = Song.create(name: 'A Moment of Silence', album_id: al10.id, artist_id: ar5.id, genre_id: g3.id)
s20 = Song.create(name: 'Point/Counterpoint', album_id: al10.id, artist_id: ar5.id, genre_id: g3.id)
s21 = Song.create(name: "What's My Age Again?", album_id: al11.id, artist_id: ar6.id, genre_id: g4.id)
s22 = Song.create(name: 'All the Small Things', album_id: al11.id, artist_id: ar6.id, genre_id: g4.id)
s23 = Song.create(name: 'Stay Together for the Kids', album_id: al12.id, artist_id: ar6.id, genre_id: g4.id)
s24 = Song.create(name: 'The Rock Show', album_id: al12.id, artist_id: ar6.id, genre_id: g4.id)
s25 = Song.create(name: 'Want You Bad', album_id: al13.id, artist_id: ar7.id, genre_id: g4.id)
s26 = Song.create(name: 'Livin in Chaos', album_id: al13.id, artist_id: ar7.id, genre_id: g4.id)
s27 = Song.create(name: 'Spare me the Details', album_id: al14.id, artist_id: ar7.id, genre_id: g4.id)
s28 = Song.create(name: 'Worst Hangover Ever', album_id: al14.id, artist_id: ar7.id, genre_id: g4.id)
s29 = Song.create(name: 'Sad But True', album_id: al15.id, artist_id: ar8.id, genre_id: g5.id)
s30 = Song.create(name: 'The Unforgiven', album_id: al15.id, artist_id: ar8.id, genre_id: g5.id)
s31 = Song.create(name: 'Prayer of the Refugee', album_id: al3.id, artist_id: ar2.id, genre_id: g1.id)
s32 = Song.create(name: 'Drones', album_id: al3.id, artist_id: ar2.id, genre_id: g1.id)
s33 = Song.create(name: 'Ready to Fall', album_id: al3.id, artist_id: ar2.id, genre_id: g1.id)
s34 = Song.create(name: 'More Than This', album_id: al7.id, artist_id: ar4.id, genre_id: g2.id)
s35 = Song.create(name: 'Stole My Heart', album_id: al7.id, artist_id: ar4.id, genre_id: g2.id)
s36 = Song.create(name: 'What Makes You Beautiful', album_id: al7.id, artist_id: ar4.id, genre_id: g2.id)

ug1 = UserGenre.create(user_id: phil.id, genre_id: g1.id)

uar1 = UserArtist.create(user_id: phil.id, artist_id: ar5.id)

ual1 = UserAlbum.create(user_id: phil.id, album_id: al3.id)
ual2 = UserAlbum.create(user_id: phil.id, album_id: al7.id)

us1 = UserSong.create(user_id: phil.id, song_id: s1.id)
us2 = UserSong.create(user_id: phil.id, song_id: s3.id)
us3 = UserSong.create(user_id: phil.id, song_id: s17.id)
us4 = UserSong.create(user_id: phil.id, song_id: s10.id)
us5 = UserSong.create(user_id: phil.id, song_id: s15.id)

pl1 = Playlist.create(name: 'Phil playlist 1', user_id: phil.id)
pl2 = Playlist.create(name: 'untitled playlist 3', user_id: phil.id)
pl3 = Playlist.create(name: 'boybands playlist', user_id: phil.id)

pls1 = PlaylistSong.create(playlist_id: pl1.id, song_id: s1.id)
pls2 = PlaylistSong.create(playlist_id: pl1.id, song_id: s5.id)
pls3 = PlaylistSong.create(playlist_id: pl1.id, song_id: s9.id)
pls4 = PlaylistSong.create(playlist_id: pl1.id, song_id: s13.id)
pls5 = PlaylistSong.create(playlist_id: pl1.id, song_id: s17.id)

pls6 = PlaylistSong.create(playlist_id: pl2.id, song_id: s3.id)
pls7 = PlaylistSong.create(playlist_id: pl2.id, song_id: s5.id)
pls8 = PlaylistSong.create(playlist_id: pl2.id, song_id: s10.id)
pls9 = PlaylistSong.create(playlist_id: pl2.id, song_id: s13.id)
pls10 = PlaylistSong.create(playlist_id: pl2.id, song_id: s17.id)
pls11 = PlaylistSong.create(playlist_id: pl2.id, song_id: s19.id)

pls12 = PlaylistSong.create(playlist_id: pl3.id, song_id: s13.id)
pls13 = PlaylistSong.create(playlist_id: pl3.id, song_id: s15.id)
pls14 = PlaylistSong.create(playlist_id: pl3.id, song_id: s11.id)
pls15 = PlaylistSong.create(playlist_id: pl3.id, song_id: s14.id)
pls16 = PlaylistSong.create(playlist_id: pl3.id, song_id: s16.id)
pls17 = PlaylistSong.create(playlist_id: pl3.id, song_id: s10.id)
pls18 = PlaylistSong.create(playlist_id: pl3.id, song_id: s9.id)
pls19 = PlaylistSong.create(playlist_id: pl3.id, song_id: s12.id)
