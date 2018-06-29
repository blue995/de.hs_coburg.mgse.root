#!/bin/sh

sh init-build.sh

cd ../docker

docker-compose build

docker-compose up
