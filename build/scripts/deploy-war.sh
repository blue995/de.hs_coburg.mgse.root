#!/bin/sh

WAR_LOCATION=$(realpath "$1")
WAR_FILE=$(realpath "$2")
WAR_PATH ="$WAR_LOCATION/$WAR_FILE"
TOMCAT_SERVER=$(realpath "$3")
TOMCAT_WAR_PATH="$TOMCAT_SERVER/webapps/$WAR_FILE"

# Copy WAR
echo "Copy $WAR_PATH to $TOMCAT_WAR_PATH"
cp "$WAR_PATH" "$TOMCAT_WAR_PATH"

# Create missing directory
mkdir "$TOMCAT_SERVER/logs"

