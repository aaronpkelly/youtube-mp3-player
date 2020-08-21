FROM alpine
RUN apk update && \
	apk add \
	curl \
	ffmpeg \
	mplayer \
	python
COPY . /app
WORKDIR /app

# even when downloading the latest youtube-dl...
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
	chmod a+rx /usr/local/bin/youtube-dl && \
	youtube-dl -U

ENTRYPOINT ["./entrypoint.sh"]
