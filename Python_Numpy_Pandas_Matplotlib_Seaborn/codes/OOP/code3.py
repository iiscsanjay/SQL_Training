class Geek:

     # constructor
     def __init__(self, name, age):


           # private data members
           self.__geekName = name
           self.__geekAge = age

     def printInfo(self):

           # accessing public data member
           print("Name: ", self.__geekName)
           print('Age: ', self.__geekAge)

     # public member function
     def displayAge(self):

           # accessing public data member
           print("Age: ", self.__geekAge)

# creating object of the class
obj = Geek("R2J", 20)

# accessing protected data member
#print("Name: ", obj.__geekName)
print(obj.printInfo())
