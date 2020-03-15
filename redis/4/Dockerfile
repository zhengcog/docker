FROM redis:4

MAINTAINER "Hyman <zhengcog@gmail.com>"

COPY etc/redis.conf /usr/local/etc/redis/redis.conf
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN  chown -R redis:redis /data
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

VOLUME ["/data1"]
EXPOSE 6379