#!/bin/bash

for IP in $(cat 4vms) 



do

echo "ur entering into $IP"

ssh vagrant@$IP <<'SHELL'

sudo yum install httpd -y

sudo yum install unzip -y

sudo yum install iptables -y

sudo yum install wget -y

sudo wget -O KI.zip http://www.tooplate.com/download/2098_health


unzip KI.zip



#source=echo $2 | cut -d / -f5 


cd 2098_health

sudo cp * -rf /var/www/html/


sudo service httpd start 

sudo chkconfig httpd on

sudo service iptables stop

sudo service httpd is-active 


SHELL

echo "you r login in $IP"

done 


