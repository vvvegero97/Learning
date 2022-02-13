inputfile = "../user_names.txt"

# myfile = open(inputfile, mode='r', encoding='ascii')
myfile = open(inputfile, mode='r', encoding='latin_1')

for num, line in enumerate(myfile,1):
    if "Davidson" in line:
        print(str(num) + ") Hello, " + line.strip() + "!")




