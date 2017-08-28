FROM s2client-game
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

ARG SYSTEM_USER_NAME=gituser
ARG GIT_USER_NAME="Git User"
ARG GIT_EMAIL=user@example.com

# Create the new git user
RUN useradd -ms /bin/bash $SYSTEM_USER_NAME

# Change the game folder ownership
RUN chown -R $SYSTEM_USER_NAME:$SYSTEM_USER_NAME /SC2

# Setup the git commit environment
USER $SYSTEM_USER_NAME
RUN git config --global user.name "$GIT_USER_NAME"
RUN git config --global user.email "$GIT_EMAIL"

# Generate a new SSH key pair without user input
RUN cat /dev/zero | ssh-keygen -q -N "" > /dev/null

# Set the starting directory
WORKDIR /home/$SYSTEM_USER_NAME

# Override the s2client-game entrypoint
ENTRYPOINT [ "/bin/bash" ]
