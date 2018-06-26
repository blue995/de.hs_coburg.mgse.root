#!/bin/sh

CURRENT_DIR=$(realpath "$1")
FRONTEND_DIR=$(realpath "$2")

# Change working directory
echo "Building Frontend."
echo "Changing working directory to '$FRONTEND_DIR'"
cd "$FRONTEND_DIR"

# Build with npm
npm install

# Go Back
echo "Changing working directory to '$CURRENT_LOCATION'"
cd "$CURRENT_LOCATION"
