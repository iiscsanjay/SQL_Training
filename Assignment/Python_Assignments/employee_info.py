#This program manages the employees information

import employee
import pickle

#Set up menu choices
ADD = 1
CHANGE = 2
DELETE = 3
LOOK_UP = 4
QUIT = 5

#global constant for the docname

DOCNAME = 'employees.dat'

#main function

def main():
    #Load an existing employee dictionary and assign it to myemployees
    myemployees = load_employees()

    #initialize a varibale to the users choice
    choice = 0

    #Set up menu choices for the user until the user wants to quit the program
    while choice != QUIT:
        choice = get_menu_choice()

        #process the choices
        if choice == ADD:
            add(myemployees)
        elif choice == CHANGE:
            change(myemployees)
        elif choice == DELETE:
            delete(myemployees)
        elif choice == LOOK_UP:
            look_up(myemployees)

    #save myemployees dictionary to a file
    save_employees(myemployees)

def load_employees():
    try:
        #open employee.dat file
        input_file = open(DOCNAME, 'rb')

        #unpickle the dictionary
        employee_dct = pickle.load(input_file)

        #close the employee.dat file
        input_file.close()

        #Return dictionary
    except IOError:
        #If file does not open create empty dictionary
        employee_dct = {}


    return employee_dct

#get_menu_choice function displays the menu and gets the users choice
def get_menu_choice():
    print()
    print('Menu')
    print('-------------------------------')
    print('1. Add a new Employee Information')
    print('2. Change an existing Employee Information')
    print('3. Delete an Employee Information')
    print('4. Look up an employee')
    print('5. Quit the program')
    print()

    #Get users choice
    choice = int(input('Enter your choice: '))

    #Check the users choice
    while choice < ADD or choice > QUIT:
        choice = int(input('Enter a valid choice: '))

        #Return the users choice
    return choice

#The add function adds a new entry into the employee dictionary

def add(myemployees):
    #get employee info
    name = input('Name: ')
    ID_number = input('ID_number: ')
    Department = input('Department: ')
    Job_title = input('Job_title: ')

    #create employee object and entry
    entry = employee.Employee(name, ID_number, Department, Job_title)


    #if name does not exist in dictionary, add it as a key with the
    #entry object as the associated value
    if ID_number not in myemployees:
        myemployees[ID_number] = entry
        print('Employee entry has been added.')
    else:
        print('Employee name already exists.')

#The change function changes an existing entry in the dictionary.
def change(myemployees):
    # Get a name to look up.
    ID_number = input('Enter a ID : ')

    if ID_number in myemployees.keys():
        # Get a new ID_number.
        name  = input('Enter the new name: ')

        # Get a new Department.
        Department = input('Enter the new Department: ')

        #Get a new Job Title.
        Job_title = input('Enter the new Job_title: ')

        # Create an employee object named entry.
        entry = employee.Employee(name, ID_number, Department, Job_title)

        # Update entry.
        myemployees[ID_number] = entry
        print('Information updated.')
    else:
        print('That employees name is not found.')

# The delete function deletes an entry from the dictionary.
def delete(myemployees):
    # Get a name.
    ID_number = input('Enter a ID : ')

    # If the name is found, delete the entry.
    if ID_number in myemployees.keys():
        del myemployees[ID_number]
        print('Entry deleted.')
    else:
        print('That Employees name is not found.')

# The look_up function looks up an item in the dictionary.
def look_up(myemployees):
    # Get a name to look up.
    ID_number = input('Enter a ID : ')


    if ID_number in myemployees.keys():
        print(myemployees[ID_number])
    else:
        print('That Employees name is not found.')



# The save_employees function pickles the object and
#saves it to the employees file.
def save_employees(myemployees):
     # Opening the file for writing.
    output_file = open(DOCNAME, 'wb')
    # Pickle the dictionary and save it.
    pickle.dump(myemployees, output_file)

    # Close the file.
    output_file.close()

#bolier syntax
if __name__ == "__main__":
    main()



