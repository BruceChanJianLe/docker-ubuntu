# Docker Ubuntu 16.04

This repository stores the information regarding setting up basic Ubuntu to be used in docker.

## Building the Dockerfile

Build the dockerfile inside the `docker_build` directory.  
```bash
cd docker_build
docker build -t ubuntu16.04:basic .
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

Run the `start_docker_container.bash` inside the `scripts` directory.  
It will automatically start the `ubuntu16.04:basic` image container.  
Please provide a name to the newly started container.  
```bash
cd scripts
./start_docker_container.bash
# Provide a name
# Starting container image ubuntu16.04:basic
# Container name: my_container
```

## Connecting to the Container

Run the `connect_docker_container.bash` inside the `scripts` directory.  
Please provide the name of container you wish to connect to.  
```bash
cd scripts
./connect_docker_container.bash
# Provide a name
# Container name to be connected: my_container
```

## A Word from Author

Enjoy your Ubuntu in a docker container. Please look at the branch for your Ubuntu Version you wish to use.  

## Reference

- [link1](https://github.com/udacimak/udacimak) [link2](https://github.com/saurabverma/dockerfiles) [link3](https://gist.github.com/robsonke/c5c478bae476adb32d48)
