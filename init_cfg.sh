#!/bin/bash

docker run --rm telegraf telegraf config > etc/telegraf.conf
docker run --rm influxdb influxd config > etc/influxdb.conf
docker run --rm kapacitor kapacitord config > etc/kapacitor.conf