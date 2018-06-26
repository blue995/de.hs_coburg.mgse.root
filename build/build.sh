#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")
PATH=$PATH:$BASEDIR/scripts
SERVER=apache-tomcat-8.0.52


### Clean project ###
clean-project.sh

### Update project ###
update-project.sh

### Setup Database ###
setup-database.sh $BASEDIR/setup.sql

echo
echo "ATTENTION"
echo "Sit down, relax and drink a cup of coffee... The next steps might take a while!"
echo "Step 1: Build platform DSLs"
echo "Step 2: Build frontend"
echo "Step 3: Build restapi"
echo
echo "Countdown:"
countdown.sh 10

### Build DSL ###
build-platform.sh $BASEDIR/../platform

### Build Frontend ###
build-frontend.sh $BASEDIR/../application/frontend

### Build Restapi ###
build-restapi.sh $BASEDIR/../application/restapi

### Deploy Restapi ###
deploy-war.sh $BASEDIR/../application/restapi/target rest-api.war $BASEDIR/../application/servers/$TOMCAT

