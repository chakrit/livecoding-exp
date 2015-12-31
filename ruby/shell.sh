#!/bin/sh

# we'll do *without* GOPATH for now.
docker images ruby-builder | ag 'ruby-builder' > /dev/null || \
  docker build -t ruby-builder ./builder

cd ./src
docker run --rm -it \
  --name livecoding-exp \
  -v "$PWD":/work \
  -p 8080:8080 \
  -w /work \
  ruby-builder \
  $@

