from fabric.api import *

#def printinfo():
   # print "this is my first fabric"



def sysinfo():
    print "class"

def update():
    sudo("yum update")

def httpd():
    sudo("yum install httpd* -y")


def httpdrestart():
    sudo("service httpd restart")

def weburl():
   $1=raw_input("enter the value:" )
   sudo("wget -O kishore.zip", $1)

#def unzip():
   # sudo("unzip" )
