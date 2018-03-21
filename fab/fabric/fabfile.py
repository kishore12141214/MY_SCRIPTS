from fabric.api import *

def l():
    local("free -m")
    print "########################################"
    local("df -h")
    print "#########################################"
    local("whoami")
    print "########################################"

    local("w")
    print "########################################"

    local("uname -r")
    print "#########################################"


def hello(name="world"):
    print "hello", name



     #creating dir, creating files and list them on remote machine
def test_run():
    run("mkdir -p /tmp/testdir $$ ls /tmp/testdir")
    run("touch /tmp/testdir/file86")
    run("ls -ltr /tmp/testdir")




def web_hosting():
    sudo("yum update -y")
    sudo("sudo yum install httpd -y")
    sudo("sudo yum install zip")
    sudo("sudo yum install iptables*")
    sudo("sudo yum install unzip")
    sudo("wget -O kishore.zip http://www.tooplate.com/download/2097_pop")
    sudo("unzip kishore.zip")
    with cd("2097_pop"):
         sudo("cp * -rvfp /var/www/html/")
         sudo("service httpd start")
         sudo("service iptables stop")

