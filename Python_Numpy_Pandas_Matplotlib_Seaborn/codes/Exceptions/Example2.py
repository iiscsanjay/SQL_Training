#!/usr/bin/python3
"""
Exception
try
except ....
"""
import sys


def main():

    a = 45
    b = 'b'
    try:
        result = a + b
    except ZeroDivisionError:
        print ('Over flow occur')
    except TypeError:
        print("Please check the variable ")
    except FloatingPointError:
        print ('Over flow occur')
    except ArithmeticError:
        print('Please enter integer value only.')
        sys.exit(-1)
    except:
        print('Exception Occur')



# boiler syntax
if __name__ == "__main__":
    main()
