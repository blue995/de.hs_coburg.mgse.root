#!/bin/sh

RESTAPI_DIR=$(realpath "$1")

# Change working directory
echo "Building REST-API."
echo "Changing working directory to '$RESTAPI_DIR'"
cd "$RESTAPI_DIR"

# Build with npm
mvn install
