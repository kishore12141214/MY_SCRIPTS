#!/usr/bin/python2.7

def printinfo(age, name ):
     print "name", name
     print "age", age
     return 

def printinfo(age=10, name ):
     print "name", name
     print "age", age
     return 
printinfo('kishore', 12)
