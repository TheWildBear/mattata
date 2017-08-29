#Use alpine as a base image
FROM alpine:3.5

COPY . /srv/bots/mattata/
  
ENTRYPOINT []

#install all requirements for Mattata
RUN sudo /srv/bots/mattata/install-debian.sh

WORKDIR /srv/bot/mattata

RUN chmod +x launch.sh

#default start mattata when container is started
CMD ["/srv/bot/mattata/launch.sh"]

#Don't forget to mount the configuration.lua file!
