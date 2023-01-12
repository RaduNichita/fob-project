#! /bin/bash

# docker stack rm backend
# docker kill $(docker ps -q)
# docker container prune
# docker image prune

docker-compose -f stack.yml down
