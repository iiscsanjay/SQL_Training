class Geek:

     # constructor
     def __init__(self, name, age):

           # protected data members
           self._geekName = name
           self._geekAge = age

     # public member function
     def displayAge(self):

           # accessing public data member
           print("Age: ", self._geekAge)

# creating object of the class
obj = Geek("R2J", 20)

# accessing protected data member
print("Name: ", obj._geekName)

# calling public member function of the class
obj.displayAge()
