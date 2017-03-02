FROM alpine

MAINTAINER Bob Rudis "bob@rud.is"

ENV DEBIAN_FRONTEND noninteractive

ADD scripts/startup.sh /tmp/startup.sh

EXPOSE 9090

ENTRYPOINT [ "/tmp/startup.sh" ]
