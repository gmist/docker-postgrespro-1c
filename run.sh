#!/bin/sh

docker run --name postgrespro-1c \
  -p 5432:5432 \
  -d \
  -v postgrespro-1c-data:/data \
  -v /etc/localtime:/etc/localtime:ro \
  -e POSTGRES_PASSWORD=password \
  --restart always \
  gmist/postgrespro-1c:vscale2Gb
