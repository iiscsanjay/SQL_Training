class Employee:
    
    #constructor
    def __init__(self,name,id,jobTitle,department):
        self.name = name
        self.id = id
        self.jobTitle = jobTitle
        self.department = department

    def setName(self,name):
        self.name = name

    def getName(self):
        return self.name

    def setDepartment(self):
        # write your code and remove pass statement
        pass

    def getDepartment(self):
        # write your code and remove pass statement
        pass

    def getJobTitle(self):
        # write your code and remove pass statement
        pass

    def setJobTitle(self,jobTitle):
        # write your code and remove pass statement
        pass

    def getId(self):
        # write your code and remove pass statement
        pass

    def setId(self,id):
        # write your code and remove pass statement
        pass

    def __str__(self):
        return f"Name: {self.name}\nID: {self.id}\nDepartment: {self.department}\nJob Title: {self.jobTitle}"
