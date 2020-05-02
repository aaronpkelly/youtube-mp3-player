#! /bin/ash

SONG=$1

youtube-dl ytsearch1:"$1" \
	--extract-audio \
	--audio-format mp3

mpg123 *.mp3
