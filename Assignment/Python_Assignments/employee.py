# This holds an employees information.

class Employee:
    #Using the __init__ method to collect the attributes
    def __init__(self, name, ID_number, Department, Job_title):
        self.__name = name
        self.__ID_number = ID_number
        self.__Department = Department
        self.__Job_title = Job_title


    #Setting the name attributes
    def set_name(self, name):
        self.__name = name

    #Setting the ID number attributes
    def set_ID_number(self, ID_number):
        self.__ID_number = ID_number

    #Setting the Department attributes
    def set_Department(self, Department):
        self.__Department = Department

    #Setting the Job title attributes
    def set_Job_title(self, Job_title):
        self.__Job_title = Job_title


    #Getting the name method returns the name attributes
    def get_name(self):
        return self.__name

    #Getting the ID number method returns the ID number attributes
    def get_ID_number(self):
        return self.__ID_number

    #Getting the Department method returns the Department attributes
    def get_Department(self):
        return self.__Department

    #Getting the Job title method returns the Job title attributes
    def get_Job_title(self):
        return self.__Job_title

    #The __str__ method returns the objects state as a string
    def __str__(self):
        return 'Name: ' + self.get_name() +\
                '\nID_number: ' + self.get_ID_number() +\
                '\nDepartment: ' + self.get_Department() +\
                '\nJob_title: ' + self.get_Job_title()

    def __repr__(self):
        return 'Name: ' + self.get_name() +\
                '\nID_number: ' + self.get_ID_number() +\
                '\nDepartment: ' + self.get_Department() +\
                '\nJob_title: ' + self.get_Job_title()
