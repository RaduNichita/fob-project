# #! /bin/bash

# docker-compose -f stack.yml build
# docker stack deploy -c stack.yml backend

docker-compose -f stack.yml up -d
