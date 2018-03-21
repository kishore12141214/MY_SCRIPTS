#!/bin/bash

for IP in `cat vagrantips`;


do

lsb_release -a 
  
  if [ $? == 0 ]
  then 	

      echo "logging into ubuntu machines "	
      echo "Logging into $IP"
ssh vagrant@$IP "sudo apt-get install apache2 -y"

  else 
      echo "loging into redhat machine"
      echo "log into $IP"

ssh vagrant@$IP "sudo yum install httpd -y"

  fi
done 






