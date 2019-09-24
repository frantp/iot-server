FROM ubuntu:19.04

RUN apt-get -y update && \
    apt-get -y install mosquitto

EXPOSE 1883
EXPOSE 8883
CMD ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
