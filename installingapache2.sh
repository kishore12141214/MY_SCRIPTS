#!/bin/bash

### installing APACHE2 in my hostos ###


PACKAGE="apache2"
#echo 
#echo "instalation started "
#echo 

#sudo apt-get install $PACKAGE -y 

#echo ######################################################################

#echo "installing $PACKAGE done"
#echo ######################################################################

## start the apache2 service ##
#echo 
#echo 
sudo systemctl stop $PACKAGE
#echo "$PACKAGE STARTED "
sudo systemctl disable $PACKAGE

#echo ######################################################################

#echo "$PACKAGE enabled "
#echo 

#echo ######################################################################



#echo "check status done"
#echo ######################################################################

#systemctl is-enabled $PACKAGE

#echo ######################################################################
#echo "creating a directory "
#echo 
#mkdir /tmp/devops 
#echo "creating file in temp folder "
#touch /tmp/devops/bashscript
#echo 
#cd /temp/devops/
