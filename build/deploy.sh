#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

sh $TOMCAT_LOCATION/bin/shutdown.sh

### Deploy Restapi ###
deploy-war.sh $RESTAPI_LOCATION/$RESTAPI_ARTIFACT_LOCATION $RESTAPI_ARTIFACT $TOMCAT_LOCATION

### Deploy Angular ###
deploy-angular.sh $FRONTEND_LOCATION/dist/hsis-ui $TOMCAT_LOCATION

sh $TOMCAT_LOCATION/bin/startup.sh
