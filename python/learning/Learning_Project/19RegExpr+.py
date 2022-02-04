# ----------------------------------------------------------------------------------------------------------------------
import re

input_filename = "../dumpfile.txt"
result_filename = "../results.txt"

inputfile = open(input_filename, mode='r', encoding='Latin-1')
resultfile = open(result_filename, mode='w', encoding='Latin-1')

lookfor = r"[\w._-]+@(?!hotmail\.com)[\w._-]+\.[\w.]+"
"""find all possible e-mail with (exception)"""
"""regex101.com"""

mytext = inputfile.read()
result = re.findall(lookfor, mytext)
for item in result:
    print(item)
    resultfile.write(item + "\n")
resultfile.write("----------------------------------------------------------------")
print("Total e-mails found: " + str(len(result)))

inputfile.close()
resultfile.close()