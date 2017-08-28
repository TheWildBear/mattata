FROM alpine:3.5
  
ENTRYPOINT []

RUN apt-get update && \  
    apt-get -qy install apt-utils git && \
    apt-get upgrade && \

WORKDIR /srv/bots

RUN git clone https://github.com/wrxck/mattata

WORKDIR /srv/bots/mattata/install

RUN sudo ./install-ubuntu.sh

WORKDIR /srv/bot/mattata

RUN chmod +x launch.sh

CMD ["/srv/bot/mattata/launch.sh"] 
