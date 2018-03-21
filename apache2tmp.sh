#!/bin/bash
package=apache2
sudo apt-get install $package -y

sudo apt-get install unzip -y

sudo apt-get install firewalld -y
sudo apt-get install wget -y

sudo wget -O $1 $2
src=`echo $2 | cut -d / -f5`
echo
echo 
echo $src

unzip $1
echo "Unzip completed successfully."
echo $src

#src=`$1 | awk -F'/' '{ print $5 }'` 
#src=`cut -d / -f5`
#echo $src
cd $src

sudo cp -r * /var/www/html/

sudo systemctl start $package

sudo systemctl enable $package

sudo systemctl is-active $package

sudo systemctl is-enabled $package



