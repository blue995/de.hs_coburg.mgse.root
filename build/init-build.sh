#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Build DSL ###
build-platform.sh $PLATFORM_LOCATION $PLATFORM_GEN_LOCATION
deploy-genfiles.sh $PLATFORM_GEN_LOCATION $RESTAPI_LOCATION/src/main/java/de/hs_coburg/mgse/persistence/creators

