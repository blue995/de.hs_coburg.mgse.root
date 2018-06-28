#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")
export PATH=$PATH:$BASEDIR/scripts

export SERVER=apache-tomcat-8.0.52

export TOMCAT_LOCATION="$BASEDIR/../application/servers/$SERVER"
export RESTAPI_LOCATION="$BASEDIR/../application/restapi"
export FRONTEND_LOCATION="$BASEDIR/../application/frontend"
export PLATFORM_LOCATION="$BASEDIR/../platform"

export PLATFORM_STANDALONE_LOCATION="$PLATFORM_LOCATION/build/standalone"
export PLATFORM_GEN_LOCATION="$PLATFORM_LOCATION/build/genfiles"

export RESTAPI_ARTIFACT="rest-api.war"
export RESTAPI_ARTIFACT_LOCATION="target"
