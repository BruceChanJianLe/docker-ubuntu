# Docker Ubuntu

This repository stores the information regarding setting up basic Ubuntu to be used in docker.

## Building the Dockerfile

Build the dockerfile inside the build directory.  
```bash
cd docker_build
docker build --tag="ubuntu16.04:basic" .
```

## Viewing Docker images

Run the following command to see if the image is correctly built.  
```bash
docker images
# Output
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# ubuntu16.04         basic               6a8f47b57aa6        About an hour ago   586MB
# ubuntu              16.04               4b22027ede29        11 hours ago        127MB
```

## Starting the Container

Run the `start_docker_container.bash` inside the `script` directory.  
It will automatically start the `ubuntu16.04:basic` image container.  
Please provide a name to the newly started container.  
```bash
cd script
./start_docker_container.bash
# Provide a name
# Starting container image ubuntu16.04:basic
# Container name: my_container
# Container name to be connected:my_container
```

## Connecting to the Container

Run the `connect_docker_container.bash` inside the `script` directory.  
Please provide the name of container you wish to connect to.  
```bash
cd script
./connect_docker_container.bash
# Provide a name
# 
