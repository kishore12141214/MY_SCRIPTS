#!/usr/bin/python2.7
a = 10
b = 20
c = a + b 

#Normal string concatenation
print("sum of", a , "and" , b , "is"), c 

#convert variable into str
print("sum of " + str(a) + " and " + str(b) + " is " + str(c)) 

# if you want to print in tuple way
print("Sum of %s and %s is %s: " %(a,b,c))  

#New style string formatting
print("sum of {0} and {1} is {2}".format(a,b,c)) 

#in case you want to use repr()
print("sum of " + repr(a) + " and " + repr(b) + " is " + repr(c))


print  ( c  +  a )
