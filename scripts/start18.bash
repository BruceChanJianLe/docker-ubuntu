#!/bin/bash
# This script start the docker container running

echo -e "Starting container image ubuntu18.04:basic"
read -p "Container name: " CONTAINERNAME

docker run -d -ti \
    -v $(pwd)/..:/root/docker_mount \
    --net=host \
    --name $CONTAINERNAME \
    --cap-add=SYS_PTRACE \
    ubuntu18.04:basic
