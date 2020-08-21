FROM alpine
RUN apk update && \
	apk add \
	curl \
	ffmpeg \
	mpg123 \
	python \
	youtube-dl
COPY . /app
WORKDIR /app

# even when downloading the latest youtube-dl...
# RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
	# chmod a+rx /usr/local/bin/youtube-dl && \

# I've found i've still needed to update it for it to work properly! (video not found before, but after updating, found)
youtube-dl -U


ENTRYPOINT ["./entrypoint.sh"]
