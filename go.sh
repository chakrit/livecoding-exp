#!/bin/sh

# we'll do *without* GOPATH for now.
docker images go-builder | ag 'go-builder' > /dev/null || \
  docker build -t go-builder ./builder

cd ./src
docker run --rm -it \
  --name livecoding-exp \
  -v "$PWD":/work \
  -p 8080:8080 \
  -w /work \
  go-builder \
  /usr/bin/go $@

