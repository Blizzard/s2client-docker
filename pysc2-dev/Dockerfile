FROM jrepp/s2client/game
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

WORKDIR /tmp
ADD downloads/Anaconda3-5.0.1-Linux-x86_64.sh .

# Install anaconda in batch mode
RUN sh Anaconda3-5.0.1-Linux-x86_64.sh -b

# Cleanup the installer
RUN rm -f /tmp/Anaconda3*

# Add the pysc2 code
WORKDIR /pysc2
ADD downloads/pysc2 .

# Specify the shared mount points
VOLUME [ "/s2client/code", "/s2client/build", "/s2client/replays" ]

# Generate a new SSH key pair without user input
RUN cat /dev/zero | ssh-keygen -q -N "" > /dev/null

WORKDIR /

# Override the entrypoint
ENTRYPOINT [ "/bin/bash" ]
