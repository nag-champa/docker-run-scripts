#!/bin/bash

docker run -d \
  --name=smokeping \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -p 80:80 \
  -v /docker/smokeping/config:/config \
  -v /docker/smokeping/data:/data \
  --restart unless-stopped \
  linuxserver/smokeping
