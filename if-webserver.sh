#!/bin/bash

lsb_release -a
package1='apache2'
package2='httpd'
if [ $? == 0  ];

 then 
	 echo 'this is ubuntu operating system'

	  sudo  apt-get install $package1 -y 
	echo
	echo "$package installed"
	  sudo systemctl start $package1 

	  sudo systemctl enable $package1
	 
	  sudo  systemctl is-active $package1 

	  sudo  systemctl is-enabled $package1

 else 

	echo 'this is redhat os '	


       sudo yum install httpd -y 
      echo
      echo "$package2 installed"
	sudo systemctl start $package2

	sudo systemctl enable $package2

	sudo systemctl is-active $package2
	
	sudo systemctl is-enabled $package2
	
fi 

