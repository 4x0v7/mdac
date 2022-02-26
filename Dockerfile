FROM alpine:3.15
RUN apk add exiftool imagemagick xdg-utils

WORKDIR /imgcompare
RUN apk add git
RUN git clone https://github.com/ewanmellor/git-diff-image .
RUN ls -la
RUN apk add bash ncurses
ENV TERM=xterm
RUN chmod +x ./install.sh
RUN ./install.sh
RUN cd git-diff-image &&\
    /imgcompare/git-diff-image/install.sh
