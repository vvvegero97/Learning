def search(array, start, finish, find):
    if finish > start:
        mid = int((finish + start)/2)
        if find == arr[mid]:
            print("Found at " + str(mid+1) + " position!")
        elif find > arr[mid]:
            search(array, mid + 1, finish, find)
        else:
            search(array, start, mid, find)
    else:
        print("Not found :(")


# ----------------------------------------------


length = int(input("Enter array length: "))
arr = [0]

for i in range(0, length):
   # inp = int(input("Enter next element: "))
    arr.append(int(input("Enter next element: ")))
arr.pop(0)
arr.sort()
print(arr)
lll = (len(arr) - 1)
x = int(input("Enter desired number: "))
search(arr, 0, lll, x)
