
enemy = {
    'loc_x': 70,
    'loc_y': 50,
    'color': 'green',
    'health': 100,
    'name': 'Kekis',
    'image': ['healthy.jpg', 'hurt.jpg', 'near_death.jpg'],
}

enemy_forces = []
for x in range(0, 10):
    enemy_forces.append(enemy.copy())
print(enemy_forces[4])
print("Enemy 5 is hit for 70!")
enemy_forces[4]['health'] -= 70
print("Enemy 5:")
print(enemy_forces[4])
print("Enemy 6:")
print(enemy_forces[5])

