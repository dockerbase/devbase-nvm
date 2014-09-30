# VERSION 1.2
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Devbase-nvm Image Container

FROM dockerbase/devbase

# Run dockerbase script
ADD     devbase-nvm.sh /dockerbase/
RUN     /dockerbase/devbase-nvm.sh

USER    devbase
ENV	HOME /home/devbase
WORKDIR /home/devbase

# Run dockerbase script
ADD     nvm.sh /dockerbase/
RUN     /dockerbase/nvm.sh

