#!/usr/bin/python3

#Module used in the program
import sys


# It will take user input parameter from outside code, when we execute the file
# all the argument are assigned to sys.argv list

# printing the list
print(sys.argv)

# for loop to print the list
# iterate the list by variable
print("Displaying the Command Line Argument: ")
for var in sys.argv:
    print(f"\t{var}")

print("Displaying the Command Line Argument: ")
# Iterating the list with index integer value
for index in range(1,len(sys.argv)):
    print(f"\targv[{index}] : {sys.argv[index]}")

# Vary first argument at index 0 is always filename
#print(len(sys.argv))

# List with index 1
#print(sys.argv[1])
#print(sys.argv[2])
