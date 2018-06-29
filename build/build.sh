#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Setup Database ###
setup-database.sh $BASEDIR/setup.sql

echo
echo "ATTENTION"
echo "Sit down, relax and drink a ☕ ... The next steps might take a while!"
echo "Step 1: Build platform DSLs"
echo "Step 2: Build frontend"
echo "Step 3: Build restapi"
echo
echo "Countdown:"
countdown.sh 10

### Build DSL ###
build-platform.sh $PLATFORM_LOCATION $PLATFORM_GEN_LOCATION

### Build Frontend ###
build-frontend.sh $FRONTEND_LOCATION

### Build Restapi ###
deploy-genfiles.sh $PLATFORM_GEN_LOCATION $RESTAPI_LOCATION/src/main/java/de/hs_coburg/mgse/persistence/creators
build-restapi.sh $RESTAPI_LOCATION
