FROM ubuntu:16.04

# ==================================================================
# Update and upgrade
# ------------------------------------------------------------------
RUN apt-get update -y && \
        apt-get upgrade -y

# ==================================================================
# Common dependencies
# ------------------------------------------------------------------
RUN apt-get install -y --no-install-recommends \
        python3-dev \
        python3-pip \
        git \
        gdb \
        vim \
        more \
        less \
        lsb-core \
        apt-utils

# ==================================================================
# config & cleanup
# ------------------------------------------------------------------
RUN apt-get autoclean -y && \
        apt-get autoremove -y && \
        rm -rf /var/lib/apt/lists/* /tmp/* ~/*

WORKDIR /home/

ENTRYPOINT ["bash"]

# # Build image using (inside the directory with Dockerfile):
# docker build --tag="ubuntu_16.04:map" .

# # Create container using (to be auto-removed on stop):
# # NOTE: See 'note' file for specific details
# docker run -d -it --rm -v /<host_parent_folder>:/code/ --net=host --name map_container ubuntu_16.04:map

# # Run container using (in multiple terminals, as needed):
# docker exec -it map_container bash

# # Stop container using:
# docker stop map_container
