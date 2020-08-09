FROM ubuntu:focal

RUN apt-get update && \ 
    apt install -y python3 curl ffmpeg && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl && \
    youtube-dl --version 

WORKDIR /media

ENTRYPOINT ["youtube-dl"]
