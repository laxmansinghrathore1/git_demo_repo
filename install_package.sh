#!/bin/bash


<<help


this script will install the package 
that you pass in the arguments


eg. ./install_package.sh nginx
./install_package.sh docker.io
./install_package.sh unzip

help



echo "Installing $1"

sudo apt-get update > /dev/null

sudo apt-get install $1 -y > /dev/null

echo "Installingh completed"
