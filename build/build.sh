#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")
PATH=$PATH:$BASEDIR/scripts

### Clean project ###
clean-project.sh

### Update project ###
update-project.sh

### Setup Database ###
setup-database.sh $BASEDIR/setup.sql

echo
echo "ATTENTION"
echo "Sit down, relax and drink a cup of coffee... The next steps might take a $
echo "1: Build platform DSLs"
echo "2: Build frontend"
echo "3: Build restapi"

countdown.sh 5

### Build DSL ###
build-platform.sh $BASEDIR $BASEDIR/../platform

### Build Frontend ###
build-frontend.sh $BASEDIR $BASEDIR/../application/frontend

### Build Restapi ###
build-restapi.sh $BASEDIR $BASEDIR/../application/restapi
