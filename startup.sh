#!/bin/sh

docker create \
    --name h2load_docker \
    h2load_docker

# start the instance
docker start h2load_docker

# execute the interactive mode
docker exec -it h2load_docker bash
