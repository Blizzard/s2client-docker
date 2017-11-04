FROM ubuntu:16.04
MAINTAINER jacobrepp@gmail.com

# Update the image with required build packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y \
    net-tools \
    build-essential \
    clang \
    cmake \
    curl  \
    git  \
    htop  \
    libidn11  \
    libz-dev \
    libssl-dev \
    make \
    python-minimal \
    software-properties-common \
    unzip \
    vim \
    wget

# Specify the shared mount points
VOLUME [ "/s2client/shared/code", "/s2client/shared/build", "/s2client/shared/replays" ]

# Generate a new SSH key pair without user input
RUN cat /dev/zero | ssh-keygen -q -N "" > /dev/null

WORKDIR /
ADD api-scripts /

ENTRYPOINT [ "/bin/bash" ]
