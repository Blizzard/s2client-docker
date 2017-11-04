FROM ubuntu:16.04
MAINTAINER jrepp@blizzard.com

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
VOLUME [ "/s2client/shared/build" ]

# Add the code
WORKDIR /s2client-api
ADD downloads/s2client-api .
ADD container-scripts/* .

ENTRYPOINT [ "/bin/bash" ]
