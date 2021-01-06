FROM redis:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

## For security settings uncomment, make the dir, copy conf, and also start with the conf, to use it
RUN mkdir -p /usr/local/etc/redis
COPY redis.conf /usr/local/etc/redis/redis.conf

# Volume set up in deployment
# VOLUME /data

# https://stackoverflow.com/a/57565545/460885
# The value of containerPort is a runtime equivalent 
# of EXPOSE to expose a port that was not specified in the image. 
# EXPOSE 6379

# Redis only used locally so no need for configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
# CMD ["redis-server"]