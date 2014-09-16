# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-nvm Image Container

FROM dockerbase/devbase

MAINTAINER Richad Lee "lifuzu@gmail.com"

ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

# Run the build scripts
RUN     apt-get update

RUN     apt-get install -y --no-install-recommends libssl-dev man

# Clean up system
RUN     apt-get clean

USER    devbase

# Set environment variables.
ENV     HOME /home/devbase

# Define working directory.
WORKDIR /home/devbase

# Install nvm
#ENV     NVM_DIR /usr/local/nvm
ENV     NVM_DIR $HOME/.nvm
RUN     wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | bash

# Install nodejs/npm
RUN     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install v0.10.31
RUN     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm alias default 0.10.31

# Define default command.
CMD ["bash"]
