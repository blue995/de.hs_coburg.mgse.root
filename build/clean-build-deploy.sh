#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Clean build ###
sh $BASEDIR/clean-build.sh

### Deploy Restapi ###
deploy-war.sh $RESTAPI_LOCATION/$RESTAPI_ARTIFACT_LOCATION $RESTAPI_ARTIFACT $TOMCAT_LOCATION

### Deploy Angular ###
deploy-angular.sh $FRONTEND_LOCATION/dist/hsis-ui $TOMCAT_LOCATION
