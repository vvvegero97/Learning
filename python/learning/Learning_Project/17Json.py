import json
filename = "user_settings.txt"
myfile = open(filename, mode='w', encoding='Latin-1')
player1 = {
    'Name': "Kekis",
    'Exp': 350,
    'Awards': ["OR", "NY", "LA"],
}

player2 = {
    'Name': "Lalka",
    'Exp': 1200,
    'Awards': ["LV", "KC", "WT"],
}

players = []
players.append(player1)
players.append(player2)

# ----------------SAVE by JSON---------------

json.dump(players, myfile)
myfile.close()

# ----------------LOAD by JSON---------------

myfile = open(filename, mode='r', encoding='Latin-1')
json_data = json.load(myfile)
for user in json_data:
    print("Name: " + str(user['Name']))
    print("Experience: " + str(user['Exp']))
    print("Award1: " + str(user['Awards'][0]))
    print("Award2: " + str(user['Awards'][1]))
    print("Award3: " + str(user['Awards'][2]))
    print("-------------------------------\n\n")
