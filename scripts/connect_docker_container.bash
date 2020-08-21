#!/bin/bash
# This script connect this terminal to docker container

# Obtain container name
read -p "Container name to be connected: " CONTAINERNAME

docker exec -ti $CONTAINERNAME env TERM=xterm-256color bash -l
