FROM horiryota/docker-golang

WORKDIR /workdir

COPY usage.sh /usr/local/bin/
COPY build.sh /usr/local/bin/

ENTRYPOINT "build.sh"
