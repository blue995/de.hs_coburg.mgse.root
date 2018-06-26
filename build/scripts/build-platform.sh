#!/bin/sh

CURRENT_DIR=$(realpath "$1")
PLATFORM_DIR=$(realpath "$2")

# Change working directory
echo "Building Platform DSL."
echo "Changing working directory to '$PLATFORM_DIR'"
cd "$PLATFORM_DIR"

# Build with gradle
gradle build

# Go Back
echo "Changing working directory to '$CURRENT_LOCATION'"
cd "$CURRENT_LOCATION"
