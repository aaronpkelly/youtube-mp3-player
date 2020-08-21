FROM alpine:edge
RUN apk update && \
	apk add \
	curl \
	ffmpeg \
	mplayer \
	python3
COPY . /app
WORKDIR /app


RUN ln -sn /usr/bin/python3 /usr/bin/python && \
	curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
	chmod a+rx /usr/local/bin/youtube-dl && \
	youtube-dl -U

ENTRYPOINT ["./entrypoint.sh"]
