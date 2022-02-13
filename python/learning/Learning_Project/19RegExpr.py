# ----------------------------------------------------------------------------------------------------------------------
import re

mytext = "Vasya aaaaaaa 1972, Kolya - 1972: Olesya 1981, aaaaaa@intel.com," \
         "bbbbbbbb@intel.com, Petya gggggg, 1992, ccccccccc@yahoo.com,    " \
         "ddddddd@intel.com, vasya@yandex.net, hello hello, Misha #43 1984, " \
         "Vladimir 1977, Irina, 2001, annnnnn@intal.com, eeeeeee@yandex.com," \
         "ooooooooooo@hotmai.gov, ggggggggg@gov.gov, tututut@giv.hot"

"""
\d   = Any Digit 0-9
\D   = Any non-Digit
\w   = Any Alphabetical symbol (A-Z a-z)
\W   = Any non-Alphabetical symbol
\s   = breakspace
\S   = non-breakspace

[0-9]{3}      = Tree digits one after another
[A-Z][a-z]+\s = Names
\w+\.\w+      = word.word

"""
texttolook = r"@\w+\.\w+"

allresults = re.findall(texttolook, mytext)

print(allresults)





