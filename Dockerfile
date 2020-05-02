FROM alpine
RUN apk update && \
	apk add \
	curl \
	ffmpeg \
	mpg123 \
	python
COPY . /app
WORKDIR /app
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
	chmod a+rx /usr/local/bin/youtube-dl
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
