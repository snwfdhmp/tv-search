# Search Torrent API: TV Show

Simple API that searches for you torrents for a given tv show.

## Getting started

### Run from sources

#### 1. Download the project and install dependencies

```bash
$ git clone https://github.com/snwfdhmp/tv-search && cd tv-search && npm i
```

#### 2. Run

```bash
$ npx babel-node app.js
```

### Run in a container

#### 1. Pull the image

```bash
$ docker pull snwfdhmp1/tv-search:v1.0.0
```


#### 2. Start a container

```bash
$ docker run --name tv-search -d -p 8080:8080 snwfdhmp1/tv-search
```

## Search for a torrent

> showId, seasonNumber, and episodeNumber are taken from themoviedb.org API
> In this case, the show is "Game of Thrones", season 7, episode 7

### Endpoint

`POST localhost:8080/search`

### Body

```json
{
	"showId":1399,
	"seasonNumber":7,
	"episodeNumber":7
}
```
### Response

```json
[
    {
        "title": "Game of Thrones S07E07 FINAL FRENCH HDTV",
        "seeds": 284,
        "peers": 8,
        "size": "699.7 Mo",
        "link": "https://www.torrent9.blue/get_torrent/55978/game-of-thrones-s07e07-final-french-hdtv.torrent",
        "desc": "https://www.torrent9.blue/torrent/55978/game-of-thrones-s07e07-final-french-hdtv",
        "provider": "Torrent9",
        "magnet": "magnet:?xt=urn:btih:5576b680bccc56ee5e3e937fbe5016f52f081931&tr=udp://eddie4.nl:6969/announce&tr=udp://shadowshq.yi.org:6969/announce"
    },
    {
        "title": "Game of Thrones S07E07 FINAL VOSTFR BluRay 720p HDTV",
        "seeds": 119,
        "peers": 4,
        "size": "1.7 Go",
        "link": "https://www.torrent9.blue/get_torrent/55975/game-of-thrones-s07e07-final-vostfr-bluray-720p-hdtv.torrent",
        "desc": "https://www.torrent9.blue/torrent/55975/game-of-thrones-s07e07-final-vostfr-bluray-720p-hdtv",
        "provider": "Torrent9",
        "magnet": "magnet:?xt=urn:btih:7bd7c0739a9c76dafaec05a9b42de88d27bdce49&tr=udp://eddie4.nl:6969/announce&tr=udp://shadowshq.yi.org:6969/announce&tr=udp://tracker.leechers-paradise.org:6969/announce&tr=udp://tracker.pirateparty.gr:6969/announce"
    }
]
```