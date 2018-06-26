#!/bin/sh

PLATFORM_DIR=$(realpath "$1")

# Change working directory
echo "Building Platform DSL."
echo "Changing working directory to '$PLATFORM_DIR'"
cd "$PLATFORM_DIR"

# Build with gradle
gradle build
