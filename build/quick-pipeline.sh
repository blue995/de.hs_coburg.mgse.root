#!/bin/sh

. ./env.sh
sh init-build.sh


cd ../docker

docker-compose down
docker-compose build
docker-compose up -d mysql-dev
echo
echo "Wait 5 Seconds"
sleep 5
docker-compose up admin restapi frontend
