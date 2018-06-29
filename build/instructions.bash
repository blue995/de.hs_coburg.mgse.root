#!/bin/bash

echo "Follow these steps:"
echo
echo "============================="
echo "1) Execute in terminal:"
echo "sh init-clean-build.sh"
read -p "Press enter to continue"
echo

echo "============================="
echo "2) Execute in terminal"
echo "sh start-containers.sh"
read -p "Press enter to continue"
echo

echo "Congratulations! You've successfully builded, generated and deployed the application"
echo "http://localhost:8081 => Adminer"
echo "http://localhost:8082/rest-api/webapi/* => Restapi"
echo "http://localhost:8083 => Frontend HSIS UI"


