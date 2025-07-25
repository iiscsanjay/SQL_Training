#!/usr/bin/python3
"""
Exception
try
except ....
"""
import sys


def main():

    try:
        number = int(input('Enter a Positive Number: '))
        if number < 15 or numnber > 25:
            raise Exception
    except ValueError:
        print(f'Number should be within the range')
        sys.exit(-1)
    except:
        print(f'General Exception Occured!')

# boiler syntax
if __name__ == "__main__":
    main()
