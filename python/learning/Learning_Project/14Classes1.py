from hero import Hero
# ------------- MAIN ----------------------------------


myhero1 = Hero("Kekis", 1, "undead")
myhero2 = Hero("Lalka", 3, "Elf")
myhero1.show_hero()
myhero2.show_hero()
myhero2.move()
myhero1.hit(myhero2.name, 30)
myhero1.show_hero()

