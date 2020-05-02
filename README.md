# About

Search and play songs from your terminal!

# Usage

Run this command, passing your search query in single quotes at the end:

```
docker run \
	--rm \
	--device=/dev/snd \
	aaronkelly/youtube-mp3-player \
	'tesseract - april'
```

# Requirements

- docker
- linux

# How it works

I use a collection of well-known tools to search for, download, convert, and play a song:

- youtube-dl
- ffmpeg
- mpg123

The linux host's sound device (/dev/snd) is then mounted into the container, allowing it to play music!

# Known issues

I can't seem to stop the container using an interrupt once the music starts playing. Oh well!


