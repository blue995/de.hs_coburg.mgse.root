#!/bin/bash

echo "Follow these steps:"
echo
echo "============================="
echo "1) Execute:"
echo "sh init-build.sh"
read -p "Press enter to continue"
echo

echo "============================="
echo "2) Start Eclipse Xtext"
echo
echo "2.1) Execute:"
echo "xtext"
echo
echo "2.2) Wait until workspace is ready (look at the bottom right) (Could take a while)"
read -p "Press enter to continue"
echo

echo "============================="
echo "3) Start Runtime Application"
echo
echo "3.1) Right click 'de.hs_coburg.mgse.platform.ser'"
echo 
echo "3.2) Run As -> Eclipse Application -> Ok"
read -p "Press enter to continue"
echo

echo "============================="
echo "4) Start the generator!"
echo
echo "4.1) Right click 'de.hs_coburg.mgse.platform.sandbox'"
echo
echo "4.2) Refresh"
echo 
echo "4.3) (In the Menu Bar) Project -> Clean..."
echo
echo "4.4) Generated source files to:"
echo "de.hs_coburg.mgse.platform.sandbox/src-gen"
read -p "Press enter to continue"

