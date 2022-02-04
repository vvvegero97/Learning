#   (------Item------)
#   (key)      (value)
enemy = {
    'loc_x': 70,
    'loc_y': 50,
    'color': 'green',
    'health': 100,
    'name': 'Kekis',
}

print("Location X = " + str(enemy['loc_x']))
print("Location Y = " + str(enemy['loc_y']))

enemy['rank'] = 'sergeant'
print("Enemy Name: " + enemy['rank'] + " " + enemy['name'])
#del enemy['rank']     -----> delete key
print("Step right..")
enemy['loc_x'] += 1
print("Location X = " + str(enemy['loc_x']))
print("Location Y = " + str(enemy['loc_y']))
print("Enemy Name: " + enemy['rank'] + " " + enemy['name'])
