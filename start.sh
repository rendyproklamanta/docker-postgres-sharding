#!/bin/bash

docker compose -f docker-compose.tserver.yml down
docker compose -f docker-compose.master1.yml down
docker compose -f docker-compose.master2.yml down
docker compose -f docker-compose.master3.yml down
docker compose -f docker-compose.haproxy.yml down
docker compose -f docker-compose.pgcat.yml down

docker compose -f docker-compose.tserver.yml up -d
docker compose -f docker-compose.master1.yml up -d
docker compose -f docker-compose.master2.yml up -d
docker compose -f docker-compose.master3.yml up -d
docker compose -f docker-compose.haproxy.yml up -d
docker compose -f docker-compose.pgcat.yml up -d