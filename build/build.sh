#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")
PATH=$PATH:$BASEDIR/scripts

SERVER=apache-tomcat-8.0.52

TOMCAT_LOCATION="$BASEDIR/../application/servers/$SERVER"
RESTAPI_LOCATION="$BASEDIR/../application/restapi"
FRONTEND_LOCATION="$BASEDIR/../application/frontend"
PLATFORM_LOCATION="$BASEDIR/../platform"

RESTAPI_ARTIFACT="rest-api.war"
RESTAPI_ARTIFACT_LOCATION="target"

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
build-platform.sh $PLATFORM_LOCATION

### Build Frontend ###
build-frontend.sh $FRONTEND_LOCATION

### Build Restapi ###
build-restapi.sh $RESTAPI_LOCATION

### Deploy Restapi ###
deploy-war.sh $RESTAPI_LOCATION/$RESTAPI_ARTIFACT_LOCATION $RESTAPI_ARTIFACT $TOMCAT_LOCATION

### Deploy Angular ###
deploy-angular.sh $FRONTEND_LOCATION/dist/hsis-ui $TOMCAT_LOCATION
