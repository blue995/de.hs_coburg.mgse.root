#!/bin/sh

CURRENT_DIR=$(realpath "$1")
RESTAPI_DIR=$(realpath "$2")

# Change working directory
echo "Building REST-API."
echo "Changing working directory to '$RESTAPI_DIR'"
cd "$RESTAPI_DIR"

# Build with npm
mvn install

# Go Back
echo "Changing working directory to '$CURRENT_LOCATION'"
cd "$CURRENT_LOCATION"
