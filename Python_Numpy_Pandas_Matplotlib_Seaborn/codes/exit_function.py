#!/usr/bin/python3

# If we want to update a global variable inside function,
# we need to use global keyword with variable name inside function

#Module used in the program
import sys



def computeTable(number):
    print(number)

str1 = input("Enter a Integer Value: ")

if str1.isdigit():
    computeTable(str1)
else:
    print("Error:  Please Enter the integer Value only")
    print("Exiting form the program")
    sys.exit(-1)

print(f"After Function Calling : {str1}")
