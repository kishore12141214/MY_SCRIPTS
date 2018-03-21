#!/bin/bash 


echo enter the values asked below
echo enter the package name 
echo
read $package
sudo apt-get install $package

systemctl is-active $package 
