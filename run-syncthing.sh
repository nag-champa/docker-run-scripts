#!/bin/bash

configdir=~/docker/appdata/syncthing/config
datadir1=~/

docker run -d \
  --name syncthing \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -e UMASK_SET=022 \
  -p 127.0.0.1:8384:8384 \
  -p 22000:22000 \
  -p 21027:21027/udp \
  -v $configdir:/config \
  -v $datadir1:/data/syncthing \
  --restart unless-stopped \
  linuxserver/syncthing
