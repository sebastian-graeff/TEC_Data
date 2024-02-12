library(spotifyr)

access_token <- get_spotify_access_token()

top_songs <- readxl::read_xlsx("Top-EU-songs.xlsx")



##LOVE

#Get top 1000 playlists containing the word "love"
love_playlists <- search_spotify(
  "Love", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)

offset_number <- 50

for(i in 1:100){
  playlists <- search_spotify(
    "Love",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                    authorization = get_spotify_access_token())
n <- 1
for(i in 1:994){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                    authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id <- love_songs$track.id
love_songs_id <- as.data.frame(love_songs_id)

##VALENTINE
#Get top 1000 playlists containing the word "Valentine"
love_playlists <- search_spotify(
  "Valentine", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Valentine",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:999){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_id,love_songs_id_track) 

##Kärlek
#Get top 1000 playlists containing the word "kärlek"
love_playlists <- search_spotify(
  "Kärlek", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Kärlek",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 

##Amour

#Get top 1000 playlists containing the word "Amour"
love_playlists <- search_spotify(
  "Amour", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Amour",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 


##Amore

#Get top 1000 playlists containing the word "Amore"
love_playlists <- search_spotify(
  "Amore", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Amore",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <-read.csv("Love-songs-compilation.csv")
love_songs_compilation <- love_songs_compilation$love_songs_id
love_songs_compilation <- as.data.frame(love_songs_compilation)
colnames(love_songs_compilation)[colnames(love_songs_compilation) == "love_songs_compilation"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 


##Amor

#Get top 1000 playlists containing the word "Amor"
love_playlists <- search_spotify(
  "Amor", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Amor",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

colnames(love_songs_compilation)[colnames(love_songs_compilation) == "love_songs_compilation"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 

##Liebe

#Get top 1000 playlists containing the word "Liebe"
love_playlists <- search_spotify(
  "Liebe", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Liebe",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 


##miłość

#Get top 1000 playlists containing the word "miłość"
love_playlists <- search_spotify(
  "miłość", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "miłość",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 


##Aşk

#Get top 1000 playlists containing the word "Aşk"

love_playlists <- search_spotify(
  "Aşk", 
  limit =50,
  type =  "playlist",
  authorization = get_spotify_access_token()
)
offset_number <- 50
for(i in 2:100){
  playlists <- search_spotify(
    "Aşk",
    type =  "playlist",
    limit = 50,
    offset = offset_number,
    authorization = get_spotify_access_token()
  )
  offset_number <- offset_number + 50
  print(offset_number)
  love_playlists<- rbind(love_playlists,playlists)
}

#Go through these playlists to retrieve the songs
love_songs <- get_playlist_tracks(love_playlists$id[1],
                                  authorization = get_spotify_access_token())
n <- 1
for(i in 1:998){
  love_song <- get_playlist_tracks(love_playlists$id[n],
                                   authorization = get_spotify_access_token())
  print(n)
  love_songs <- rbind(love_songs,love_song)
  n <- n+1
}

love_songs_id_track <- love_songs$track.id
love_songs_id_track <- as.data.frame(love_songs_id_track)
colnames(love_songs_id_track)[colnames(love_songs_id_track) == "love_songs_id_track"]  <- "love_songs_id"

love_songs_compilation <- rbind(love_songs_compilation,love_songs_id_track) 

#save compilation of all songs
write.csv(love_songs_compilation,"Love-songs-compilation.csv")



#Check how many times the top songs per country are featured in the songlist
library(dplyr)
love_songs_compilation <- read.csv("Love-songs-compilation.csv")
colnames(top_songs)[colnames(top_songs) == "track.id"]  <- "love_songs_id"

love_songs_compilation <- love_songs_compilation$love_songs_id
love_songs_compilation <- as.data.frame(love_songs_compilation)
colnames(love_songs_compilation)[colnames(love_songs_compilation) == "love_songs_compilation"]  <- "love_songs_id"

count_songs <- inner_join(top_songs,love_songs_compilation,by="love_songs_id")

count_df <- count_songs %>% group_by_all() %>% count
count_country <- count_df %>% group_by(n) %>% sum

#Save data of song counts
write.csv(count_df,"Love-songs-compilation-count.csv")
