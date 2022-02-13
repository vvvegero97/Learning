inputfile = "../list_of_passwords.txt"
outputfile = "../my_passwords.txt"

password_keyword = "lalka"

myfile1 = open(inputfile, mode='r', encoding='latin_1')
myfile2 = open(outputfile, mode='a', encoding='latin_1')

myfile2.write("---------------------------------------------------\n")
for num, line in enumerate(myfile1, 1):
    if password_keyword in line:
        print("Line №: " + str(num) + " : " + line.strip())
        myfile2.write("Found password: " + line)

myfile1.close()
myfile2.close()


