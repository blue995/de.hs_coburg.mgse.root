#!/bin/sh

BASEDIR=$(dirname "$0")
BASEDIR=$(realpath "$BASEDIR")
PATH=$PATH:$BASEDIR/scripts

### Clean project ###
clean-project.sh

### Update project ###
update-project.sh

### Setup Database ###
setup-database.sh $BASEDIR/setup.sql

### Build DSL ###
build-platform.sh $BASEDIR $BASEDIR/../platform
