#/bin/bash

srcDir='/srcDir'

if [ -z "$IMAGE_NAME" ]; then
  echo '$IMAGE_NAME unbound'
  usage.sh
  exit 1
fi

if [ ! -d "${srcDir}" ]; then
  echo 'srcDir not found'
  usage.sh
  exit 1
fi

if [ ! -r "${srcDir}/Dockerfile" ]; then
  echo 'Dockerfile not found'
  usage.sh
  exit 1
fi

if [ ! -r "${srcDir}/pre.sh" ]; then
  echo 'pre.sh not found'
  usage.sh
  exit 1
fi

cp -R /srcDir/* ./

./pre.sh && \
  docker build -t $IMAGE_NAME .
