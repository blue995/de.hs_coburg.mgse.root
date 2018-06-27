#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")

. $BASEDIR/env.sh

### Clean build ###
sh $BASEDIR/build.sh

### Deploy all ###
sh $BASEDIR/deploy.sh

