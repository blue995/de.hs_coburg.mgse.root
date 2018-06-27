#!/bin/sh

GEN_LOCATION=$(realpath "$1")
DEST_LOCATION=$(realpath "$2")

# Handle missing gen directory
if [ ! -d "$GEN_LOCATION" ]; then
	echo "Folder '$GEN_LOCATION' does not exist."
	exit 1
fi

# Handle missing destination directory
if [ ! -d "$DEST_LOCATION" ]; then
	echo "Folder '$DEST_LOCATION' does not exist."
	echo "Creating directory structure."
	mkdir -p "$DEST_LOCATION"
fi

echo "Copying files from $GEN_LOCATION to $DEST_LOCATION..."
cp -r $GEN_LOCATION/* $DEST_LOCATION
echo "...done."
echo
