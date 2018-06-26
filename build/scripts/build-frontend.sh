#!/bin/sh

FRONTEND_DIR=$(realpath "$1")

# Change working directory
echo "Building Frontend."
echo "Changing working directory to '$FRONTEND_DIR'"
cd "$FRONTEND_DIR"

# Build with npm and ng
echo "Install Angular dependencies"
npm install
echo "Build project"
ng build --prod
