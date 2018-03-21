#!/bin/bash

package=apache2

sudo apt-get install $package


wget -O $1 http://www.tooplate.com/download/2096_individual


unzip $1 


cd kishore1 | cp * -r /var/www/html/


systemctl start $package 



systemctl enable $package 


systemctl is-enabled $package 


apt-get install ufw


systemctl stop ufw


systemctl disable ufw 
