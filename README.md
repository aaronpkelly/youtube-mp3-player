# About

Search and play songs from your terminal!

# Usage

You need Linux with Docker installed in order to use this tool.

Source the `.aliases` file, then run the container with `r`, putting your search query in quotes:

```
r 'beach boys california girls'
```

You can also use `b` to build the image locally.

# How it works

I use a collection of tools to search for, download, convert, and play a song:

- youtube-dl
- ffmpeg
- mplayer

The linux host's sound device (/dev/snd) is then mounted into the container, allowing it to play music!

# Known issues

I can't seem to stop the container using an interrupt once the music starts playing. Oh well!
