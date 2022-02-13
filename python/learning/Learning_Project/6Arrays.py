cities = ['Toronto', 'Moscow', 'vitebsk', 'Minsk', 'New York']
print(cities)
print(len(cities))
print(cities[0])
print(cities[2].title())
print(cities[-1].upper())


cities[3] = 'Kiev'
print(cities)

cities.append('Mogilev')                  #Add to the end of array
print(cities)
cities.insert(1, 'Gomel')                 #Insert on index 1
print(cities)

del cities[1]                             #Delete index 1
print(cities)
cities.remove('Kiev')
print(cities)                             #Remove exact value

deleted_city = cities.pop()               #Pop the biggest index from array
print("Deleted city is: " + deleted_city)
print(cities)
cities.sort()
print(cities)
print("-----------")
cities.sort(reverse=True)
print(cities)
cities.reverse()
print(cities)
