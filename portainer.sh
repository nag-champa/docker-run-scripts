#!/bin/bash


docker volume create portainer_data
docker run -d \
	-p 10.20.20.1:9000:9000 \
       	--name=portainer \
	--restart=always \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v portainer_data:/data portainer/portainer
