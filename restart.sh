#!/bin/bash
docker rm -f $(docker ps -aq --filter="name=${PWD##*/}")
#sudo rm -rf var
docker-compose up -d