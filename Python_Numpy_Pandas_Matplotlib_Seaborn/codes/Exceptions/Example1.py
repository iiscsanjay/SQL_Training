#!/usr/bin/python3
"""
Exception
try
except ....
"""
import sys
import os

def fileRead1():
    """ Using os.path.exists to check if file exists in the local director"""

    if os.path.exists('Todo.txt') :
        with open('Todo.txt','r') as f:
            for line in f.readlines():

                # remove leading or trailing spaces and new line character
                line  = line.strip()

                print(line)


def fileRead():
    try:
        with open('Todo.txt','r') as f:
            for line in f.readlines():

                # remove leading or trailing spaces and new line character
                line  = line.strip()

                print(line)
    except FileNotFoundError :
        print('Error: Please check the file in the current working director')
        sys.exit(-1)

def fileWrite():
    try:
        with open('Todo.txt','w') as f:

            while True:

                line = input('Enter the line: ')

                if not line.isdigit() and line == 'x':
                    break
                else:
                    line = int(line)
    except FileNotFoundError :
        print('Error: Please check the file in the current working director')
        sys.exit(-1)
    except IOError :
        print('Error: not able to write the file.')
        sys.exit(-1)
    except:
        print('Please enter integer only.')
        sys.exit(-1)
    finally:
        print('Good Bye!')
# boiler syntax
if __name__ == "__main__":
    fileWrite()
