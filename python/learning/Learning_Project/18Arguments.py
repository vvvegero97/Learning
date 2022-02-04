import sys
import os
x = len(sys.argv)
if x > 1:
    if sys.argv[1] == "/?":
        print("Help requested.")
        print("Usage of this program is: python.exe myfile.py argv1 argv2...")
    print("Arguments entered: " + str(sys.argv[1:]))
else:
    print("No arguments detected")

os.system("dir")
# os.mkdir("my dir")
sys.exit(2)