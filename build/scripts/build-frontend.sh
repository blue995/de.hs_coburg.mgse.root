#!/bin/sh

CURRENT_DIR=$(realpath "$1")
FRONTEND_DIR=$(realpath "$2")

# Change working directory
echo "Building Frontend."
echo "Changing working directory to '$FRONTEND_DIR'"
cd "$FRONTEND_DIR"

# Build with npm
echo
echo "ATTENTION"
echo "Sit down, relax or go drink ANOTHER coffee... this might take a while!"
sleep 6
npm install

# Go Back
echo "Changing working directory to '$CURRENT_LOCATION'"
cd "$CURRENT_LOCATION"
