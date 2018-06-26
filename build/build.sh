#!/bin/sh

### Updating project ###
#git pull
#git submodule update

### Setup Database ###
# Recreate database and user
echo "Recreating database and user."
mysql -uroot -proot < setup.sql

### Build DSL ###
echo "building DSL."
# Change working directory
echo "Changing working directory..."
cd ../platform
echo "Current working directory: $PWD"

# Clean everything that was generated in platform
echo "Cleaning all generated files."
git clean -xfd
echo
echo "Building platform."
echo "ATTENTION"
echo "Sit down, relax or go drink some coffee... this might take a while!"
sleep 6

# Build the platform
# With Gradle
gradle build
