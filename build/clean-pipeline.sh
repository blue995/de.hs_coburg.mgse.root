#!/bin/sh

sh init-clean-build.sh

cd ../docker

docker-compose build

docker-compose up
