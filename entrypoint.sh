#! /bin/ash
set -eux

SONG=$@

youtube-dl ytsearch1:"$SONG" \
	--extract-audio \
	--audio-format opus

mplayer *.opus
