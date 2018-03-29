FROM alpine:edge

MAINTAINER thimico@gmail.com

RUN \
apk add --no-cache mongodb && \
rm /usr/bin/mongoperf

VOLUME /data/db
EXPOSE 27017 28017

COPY run.sh /root
RUN ["chmod", "+x", "/root/run.sh"]
ENTRYPOINT [ "/root/run.sh" ]

CMD [ "mongod", "--bind_ip", "0.0.0.0" ]