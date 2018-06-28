#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Clean project ###
clean-project.sh

### Update project ###
update-project.sh

### Build DSL ###
build-platform.sh $PLATFORM_LOCATION $PLATFORM_GEN_LOCATION

