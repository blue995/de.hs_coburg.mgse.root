#!/bin/sh

FRONTEND_DIR=$(realpath "$1")

# Change working directory
echo "Building Frontend."
echo "Changing working directory to '$FRONTEND_DIR'"
cd "$FRONTEND_DIR"

# Build with npm
npm install
