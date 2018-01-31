FROM alpine:latest
MAINTAINER thimico

ENV MONGO_USERNAME root
ENV MONGO_PASSWORD password

RUN apk update && \
    apk upgrade && \
    apk add --no-cache mongodb && \
    rm /usr/bin/mongoperf

COPY entrypoint.sh /entrypoint.sh
COPY mongod.conf /etc/mongod.conf

VOLUME /data/db

EXPOSE 27017 28017

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mongod"]