docker build Mattata .
docker create mattata-prod
docker run -d -p 6379:6379 -v redisdata:/data --name redis dockerfile/redis redis-server /etc/redis/redis.conf --requirepass <password>
docker run mattata-prod -d -v configuration.lua /srv/bots/mattata/configuration.lua --link redis:redis mattata-prod
