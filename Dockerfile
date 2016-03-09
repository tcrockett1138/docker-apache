FROM debian
MAINTAINER Tim Crockett

RUN apt-get update && apt-get install -y \
        apache2 \
    && rm -rf /var/lib/apt/lists/*

ENV APPDIR myapp
RUN mkdir -p "$APPDIR/bin" "$APPDIR/etc"
COPY *.sh "$APPDIR/bin/"
WORKDIR $APPDIR

EXPOSE 80 443
CMD "/$APPDIR/bin/startApache.sh"
