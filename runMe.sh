#! /bin/bash

SONG=$@

usage() {
	cat <<-EOF
	Usage: ./runMe.sh [artist and song]
	EOF
}

if [ ! "$SONG" ]; then
	usage
	exit 1
fi

docker run --rm \
	--device=/dev/snd \
	aaronkelly/youtube-mp3-player \
	"$SONG"
