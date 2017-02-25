#!/bin/sh

docker run --name postgrespro-1c \
  -p 5432:5432 \
  --detach \
  --volume postgrespro-1c-data:/data \
  --volume /etc/localtime:/etc/localtime:ro \
  --env POSTGRES_PASSWORD=password \
  alexanderfefelov/postgrespro-1c
