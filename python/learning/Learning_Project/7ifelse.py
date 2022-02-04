age = 55

if age < 18:
    print(str(age) + " is smol")
elif (age >= 19) and (age < 60):
    print(str(age) + " is Middle Aged")
else:
    print(str(age) + " IS OLD")

all_cars = ['christler', 'dacia', 'bmw', 'KIA', 'vw', 'seat', 'skoda', 'lada', 'audi', 'ford', 'Chevrolett']
german_cars = ['bmw', 'vw', 'audi']

for xxx in all_cars:
    if xxx in german_cars:
        print(xxx + " is German car")
#    else:
#        print(xxx + " is not German car")

