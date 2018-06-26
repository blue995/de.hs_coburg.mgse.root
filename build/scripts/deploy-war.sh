#!/bin/sh

WAR_LOCATION=$(realpath "$1")
WAR_FILE="$2"
WAR_PATH="$WAR_LOCATION/$WAR_FILE"
TOMCAT_SERVER=$(realpath "$3")
TOMCAT_WAR_PATH="$TOMCAT_SERVER/webapps/$WAR_FILE"

# Copy WAR
echo "Copy $WAR_PATH to $TOMCAT_WAR_PATH"
if [ ! -e "$WAR_PATH" ]; then
	echo "File does not exist. Try to run your build script before deployment."
	exit 1
fi
cp "$WAR_PATH" "$TOMCAT_WAR_PATH"

# Create missing directory
if [ ! -d "$TOMCAT_SERVER/logs" ]; then
	echo "Create missing directory 'logs'"
	mkdir "$TOMCAT_SERVER/logs"
fi
