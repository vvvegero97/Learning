name = input("What is your name?.. ")
print("Hello, " + name + "!")
#######################################
num1 = input("Enter X: ")
num2 = input("Enter Y: ")
summ = int(num1) + int(num2)
print("X + Y = " + str(summ))
#######################################
while True:
    message = input("Enter Password: ")
    if message == 'secret': break
    print("Incorrect Password!!!")
#######################################
mylist = []
while True:
    msg = input("Enter new item (type STOP to finish): ")
    if msg.upper() == 'STOP': break
    mylist.append(msg)
print(mylist)
print("Last input: " + msg)
#######################################
