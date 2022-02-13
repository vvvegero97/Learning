import sys
# filename = "../user_names.txt"
filename = "user_names.txt"

while True:
    try:
        print("Inside TRY...")
        myfile = open(filename, mode='r', encoding='Latin-1')
    except Exception:
        print("Inside EXCEPT")
        print("Error!")
        print(sys.exc_info()[1])
#       sys.exit()
        filename = input("Enter correct file name: ")
    else:
        print("Inside ELSE")
        print(myfile.read())
        break
#   finally:
#       print("Inside FINALLY")

print("----------------------------------------EOF")
