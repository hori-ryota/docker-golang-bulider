#/bin/bash

echo 'usage: docker run --privileged -v /var/run/docker.sock:/var/run/docker.sock -v $DOCKERFILE_DIR:/srcDir:ro -e IMAGE_NAME=$IMAGE_NAME horiryota/docker-golang-builder'
echo 'Dockerfile and pre.sh are needed in $DOCKERFILE_DIR'
