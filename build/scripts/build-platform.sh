#!/bin/sh

CURRENT_DIR=$(realpath "$1")
PLATFORM_DIR=$(realpath "$2")

# Change working directory
echo "Building Platform DSL."
echo "Changing working directory to '$PLATFORM_DIR'"
cd "$PLATFORM_DIR"

# Build with gradle
echo
echo "ATTENTION"
echo "Sit down, relax or go drink some coffee... this might take a while!"
sleep 6
gradle build

# Go Back
echo "Changing working directory to '$CURRENT_LOCATION'"
cd "$CURRENT_LOCATION"
