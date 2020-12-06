# requirements

docker, linux

# getting started

Run this command

```
docker run --device=/dev/snd --rm --name youtube-mp3-player -it aaronkelly/youtube-mp3-player 'beach boys california girls'
```

See the .aliases file for more docker commands

# how it works

I use a collection of tools to search for, download, convert, and play a song:

- youtube-dl
- ffmpeg
- mplayer

The linux host's sound device (/dev/snd) is then mounted into the container, allowing it to play music!

# see also

project home: https://sr.ht/~aaronkelly/youtube-mp3-player

git repo: https://git.sr.ht/~aaronkelly/youtube-mp3-player

issue tracker: https://todo.sr.ht/~aaronkelly/youtube-mp3-player

mailing lists: https://sr.ht/~aaronkelly/youtube-mp3-player/lists
