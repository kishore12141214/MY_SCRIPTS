#!/bin/bash

### installing argument service  in my hostos ###

echo read $1 
echo 
echo "instalation started "
echo 

sudo apt-get install $1 -y 

echo ######################################################################

echo "installing $1 done"

echo ######################################################################

## start the $1 service ##
echo 
echo 
systemctl start $1
echo 
echo
systemctl is-active $1

echo 
echo
echo "$1 STARTED "
systemctl enable $1

echo ######################################################################

echo "$1 enabled "
echo 

echo ######################################################################



echo "check status done"
echo ######################################################################

systemctl is-enabled $1

echo ######################################################################
