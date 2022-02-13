cars = ['bmw', 'vw', 'audi', 'skoda', 'lada']
print(cars)

for x in cars:
    print(x.upper())

for x in range(1, 6):
    print(x)

mynumb_list = list(range(0, 10))
print(mynumb_list)

for x in mynumb_list:
    x = x * 2
    print(x)
c = mynumb_list.sort(reverse=True)
print(mynumb_list)

print(max(mynumb_list))
print(sum(mynumb_list))

#cars = ['bmw', 'vw', 'audi', 'skoda', 'lada']
print(cars)
mycars = cars[1:4]
print(mycars)
mycars = cars[:4]
print(mycars)
mycars = cars[2:]
print(mycars)

mycars = cars[:]