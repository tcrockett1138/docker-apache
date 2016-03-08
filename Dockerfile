FROM debian
MAINTAINER Tim Crockett <tim.crockett@gmail.com>

RUN apt-get update && apt-get install -y \
        apache2 \
    && rm -rf /var/lib/apt/lists/*

ENV APPDIR myapp
RUN mkdir -p "$APPDIR/bin" "$APPDIR/etc"
COPY testfile.sh "$APPDIR/bin"
WORKDIR $APPDIR

EXPOSE 80 443
#CMD "/tmp/testfile.sh"
