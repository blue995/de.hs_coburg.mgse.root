#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Build DSL ###
build-platform.sh $PLATFORM_LOCATION $PLATFORM_GEN_LOCATION

