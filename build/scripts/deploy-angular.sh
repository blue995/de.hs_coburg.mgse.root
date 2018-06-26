#!/bin/sh

DIST_FOLDER=$(realpath "$1")
TOMCAT_SERVER=$(realpath "$2")
ROOT="$TOMCAT_SERVER/webapps/ROOT"

if [ ! -d "$ROOT" ]; then
	echo "Creating missing ROOT directory"
	mkdir "$ROOT"
fi
cp -r "$DIST_FOLDER"/* "$ROOT"/
