FROM Mattatadev

ADD COPY . /srv/bots/mattata/

WORKDIR /srv/bot/mattata

RUN chmod +x launch.sh

#default start mattata when container is started
CMD ["/srv/bot/mattata/launch.sh"] 
