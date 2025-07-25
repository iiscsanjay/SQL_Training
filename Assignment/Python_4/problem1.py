class Letter:
    def __init__(self,letterFrom, letterTo):
        self.header = "Dear " + letterTo + ":\n"
        self.footer = " Sincerely,\n" + letterFrom + "\n"
        self.content = ""

    def addLine(self,line):
        pass

    def getText(self):
        """getText method returns the letter format """
        return self.header + self.content + self.footer


def main():
    """driver program """

    # created a object of Letter Class
    l = Letter("Mary","John")

    # call addLine twice
    l.addLine("I am sorry we must part.")

    l.addLine("I wish you all the best.")

    print(l.getText())

if __name__ == "__main__":
    main()
