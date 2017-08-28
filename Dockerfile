#Use alpine as a base image
FROM alpine:3.5

ADD ./install/install-debian.sh /srv/bots/mattata/install/install-debian.sh
  
ENTRYPOINT []

#download required parts
RUN apt-get update && \  
    apt-get -qy install apt-utils && \
    apt-get upgrade && \

#install all requirements for Mattata
RUN sudo /srv/bots/mattata/install-debian.sh

WORKDIR /srv/bot/mattata

RUN chmod +x launch.sh

#default start mattata when container is started
CMD ["/srv/bot/mattata/launch.sh"] 
