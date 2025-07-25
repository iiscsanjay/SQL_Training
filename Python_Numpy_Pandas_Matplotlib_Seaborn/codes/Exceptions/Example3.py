#!/usr/bin/python3
"""
Exception
try
except ....
"""
import sys


def main():

    fruitDict = { 'mango' : 25, 'orange' : 40}
    fruitNameList = ['mango','orange', 'guava']
    try:
        fruitName = input('Enter the fruitName : ')
        print(f'Price for the {fruitName}  is {fruitDict[fruitName]}' )
        print(f"Index of Banana is {fruitNameList.index('Banana')}")
    except KeyError:
        print(f'Key not found in fruitDict')
        sys.exit(-1)
    except ValueError:
        print(f'Banana is not found in the fruitNameList')
        sys.exit(-1)
    except:
        print('General Exception Occured')
    finally:
        print('Exiting from the program')



# boiler syntax
if __name__ == "__main__":
    main()
