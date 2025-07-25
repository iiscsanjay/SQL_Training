#!/usr/bin/python3
"""
Exception
try
except ....
"""
import sys


def main():

    try:
        Print("Hello World")
    except NameError:
        print(f'Print function is not defined!')
        sys.exit(-1)
    except:
        print(f'General Exception Occured!')

# boiler syntax
if __name__ == "__main__":
    main()
