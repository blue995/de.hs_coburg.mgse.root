#!/bin/bash

echo "Follow these steps:"
echo
echo "============================="
echo "1) Execute in terminal:"
echo "sh init-build.sh"
read -p "Press enter to continue"
echo

echo "============================="
echo "2) Start Eclipse Xtext"
echo
echo "2.1) Execute in terminal:"
echo "xtext"
echo
echo "2.2) Select all projects"
echo "- Hit F5"
echo "- (In the Menu Bar) Project -> Clean..."
echo "- (Bottom right) Hit the trash can to run the garbage collector"
echo
echo "2.3) Wait until workspace is ready (look at the bottom right) (Could take a while)"
read -p "Press enter to continue"
echo

echo "============================="
echo "3) Start Runtime Application in Xtext"
echo
echo "3.1) Right click 'de.hs_coburg.mgse.platform.ser'"
echo
echo "3.2) Run As -> Eclipse Application -> Ok"
read -p "Press enter to continue"
echo

echo "============================="
echo "4) Start the generator in Runtime Application"
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
echo

echo "============================="
echo "5) Execute in terminal:"
echo "sh build-deploy.sh"
read -p "Press enter to continue"
echo

echo "Congratulations! You've successfully builded, generated and deployed the application"


