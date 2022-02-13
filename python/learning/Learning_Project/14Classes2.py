from hero import *
myhero1 = Hero("Kekis", 1, "undead")
myhealer1 = Healer("Kekw", 10, "gnome", 2)
myhero1.show_hero()
myhealer1.show_hero()

myhealer1.hit(myhero1.name, 30)
myhealer1.show_hero()

myhealer1.heal()
myhealer1.tier_up()

myhealer1.show_hero()
