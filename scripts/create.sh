#!/bin/bash
set -e

influx bucket create \
    --name ${INFLUXDB_META_BUCKET} \
    --retention 1d \
    --org ${DOCKER_INFLUXDB_INIT_ORG}
