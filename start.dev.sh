#!/bin/bash

docker stack rm yugabyte
docker swarm init
docker network create --driver overlay yugabyte-network

cd nodes
docker stack deploy --compose-file master1/docker-compose.yml --detach=false yugabyte
docker stack deploy --compose-file master2/docker-compose.yml --detach=false yugabyte
docker stack deploy --compose-file master3/docker-compose.yml --detach=false yugabyte
cd ../

cd services
docker stack deploy --compose-file pgcat/docker-compose.yml --detach=false yugabyte
docker stack deploy --compose-file haproxy/docker-compose.yml --detach=false yugabyte
docker stack deploy --compose-file backup/docker-compose.yml --detach=false yugabyte
cd ../