#!/bin/sh

PLATFORM_DIR=$(realpath "$1")

if [ ! -d "$2" ]; then
	echo "Folder '$2' does not exist."
	echo "Creating directory structure."
	mkdir -p "$2"
fi

PLATFORM_GEN_DIR=$(realpath "$2")

# Change working directory
echo "Building Platform DSL."
echo "Changing working directory to '$PLATFORM_DIR'"
cd "$PLATFORM_DIR"

# Build with gradle
#gradle clean
gradle build
gradle buildStandalone

# Generate model
FILES=$PLATFORM_DIR/build/standalone/*
for f in $FILES
do
	echo "Processing $f file..."
	java -jar $f platform-models/de.hs_coburg.mgse.platform.sandbox/src $PLATFORM_GEN_DIR
done
