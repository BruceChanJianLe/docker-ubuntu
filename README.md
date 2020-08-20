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
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# ubuntu16.04         basic               6a8f47b57aa6        About an hour ago   586MB
# ubuntu              16.04               4b22027ede29        11 hours ago        127MB