# About

Search and play songs from your terminal!

# Requirements

- linux
- docker

# Usage

You can just use the `./runMe.sh` script:

```
./runMe.sh Beach Boys - California Girls
```

The above script is just a wrapper around this command:

```
docker run --rm \
	--device=/dev/snd \
	aaronkelly/youtube-mp3-player \
	'Beach Boys - California Girls'
```

# How it works

I use a collection of tools to search for, download, convert, and play a song:

- youtube-dl
- ffmpeg
- mpg123

The linux host's sound device (/dev/snd) is then mounted into the container, allowing it to play music!

# Known issues

I can't seem to stop the container using an interrupt once the music starts playing. Oh well!
