#! /bin/ash

SONG=$@

youtube-dl ytsearch1:"$SONG" \
	--extract-audio \
	--audio-format mp3

mpg123 *.mp3
