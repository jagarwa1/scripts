# scripts
Scripts that I use for my workflow

organize photos based on exif data
* img-watch-and-move
* organize-and-move

upload scrobble data to lastfm
* lastfm-sync runs dockerized [rb-scrobbler](https://github.com/jeselnik/rb-scrobbler). experimented with it this way because i couldn't get the latest Golang package to build rb-scrobbler on my machine at the time. follow directions there for how to compile rb-scrobbler with api keys.

get music library ready for ipod
* mkipod. needs [transfercoder](https://github.com/DarwinAwardWinner/transfercoder)

then some other misc ones

# install
running ```make install``` will create some symlinks for scripts. work in progress.
