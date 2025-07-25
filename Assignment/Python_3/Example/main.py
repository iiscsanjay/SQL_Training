from Employee import Employee

def displayMenu():
   pass

def main():
    database = dict()
    run = True
    while run:
       displayMenu();
       choice = int(input("Enter your choice: "))
       if choice == 1 :
           pass
       elif choice == 2:
           name = getStr("Enter employee name: ")
           id = getInteger("Enter employee id in (4 digit Integer) :")
           department = getStr("Enter employee's department: ")
           title = getStr("Enter the title of the employee: ")
           e = Employee(name,id,title,department)
           database[id] = e
       elif choice == 3:
           pass
       elif choice == 4:
           printAllEmployee(database)
       elif choice == 5:
           printAllEmployeeName(database)
       elif choice == 6:
           run = False
           print("Exiting from program!")





if __name__ == '__main__':
    main()

# Try to follow the program at this link
#https://www.geeksforgeeks.org/menu-driven-python-program-for-opening-the-required-software-applictaion/
