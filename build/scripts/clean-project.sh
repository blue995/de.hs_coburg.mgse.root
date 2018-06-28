#!/bin/sh

sudo git clean -xfd
sudo git submodule foreach --recursive git clean -xfd
git submodule foreach --recursive git checkout .
