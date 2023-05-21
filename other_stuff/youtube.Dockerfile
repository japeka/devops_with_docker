#base image ubuntu
FROM ubuntu:18.04

#set workdir
WORKDIR /mydir

# get curl & python
RUN apt-get update && apt-get install -y curl python
# download youtube-dl
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
# make it executable
RUN chmod a+x /usr/local/bin/youtube-dl

# set env variable
ENV LC_ALL=C.UTF-8

ENTRYPOINT ["/usr/local/bin/youtube-dl"]

CMD ["https://imgur.com/gallery/xwJgflf"]