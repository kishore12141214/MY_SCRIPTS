#!/usr/bin/python2.7

import os

path = "/etc"


if os.path.isdir(path):


    print "it is a direactory "

elif os.path.isfile(path):

    print "this is a file "


#else : 

 #  print "this is not a file nor directory"
