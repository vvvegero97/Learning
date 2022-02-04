class Hero():
    """base hero class"""
    def __init__(self, name, level, race):
        """initialization"""
        self.name = name
        self.level = level
        self.race = race
        self.health = 100

    def show_hero(self):
        """Print all hero info"""
        description = (self.name + ", level: " + str(self.level) + ". Race: " + self.race + ". Health: " + str(self.health) + ".").title()
        print(description)

    def level_up(self):
        """get +1 level"""
        self.level += 1
        print("Player " + self.name + " evolved to level " + str(self.level) + "!")

    def move(self):
        """Start moving"""
        print("Hero " + self.name + " is walking now.")

    def hit(self, enemy, amount):
        """Lose health from enemy"""
        self.health -= amount
        print("Player " + self.name + " got hit by " + enemy + " for " + str(amount) + "!")
# ---------------------------------------------------------------------------------------------


class Healer(Hero):
    """healer class"""
    def __init__(self, name, level, race, tier):
        """Initialization of mage"""
        super().__init__(name, level, race)
        self.tier = tier
        self.mana = 100

    def heal(self):
        """spend mana to gain health"""
        if self.mana >= 10:
            if self.health < 80:
                self.mana -= 10
                self.health += 20
                print(self.name.title() + " restored health to " + str(self.health))
            else:
                print("Healing not required.")
        else:
            print("Not enough mana.")

    def tier_up(self):
        self.tier += 1
        print(self.name.title() + " got to Magic Tier " + str(self.tier) + "!")

    def show_hero(self):
        description = (self.name + ", level: " + str(self.level) + ". Race: " + self.race + ". Health: "
                       + str(self.health) + ". Magic Tier: " + str(self.tier)
                       + ". Mana: " + str(self.mana) + ".").title()
        print(description)
