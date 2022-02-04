#################################################################
def Hmsg(name):
    """Print Hello Message"""
    print("Hello, " + name + "!")


def Summa(x, y):
    return x+y


def Fact(x):
    b = 1
    for a in range(1, x+1):
        b *= a
    return b
#################################################################
print("========================")
Hmsg("Slavik")
#print(Summa(40, 80))
#print(Fact(int(input("Enter x: "))))
for i in range(1, 11):
    print(str(i) + "!\t = " + str(Fact(i)))










