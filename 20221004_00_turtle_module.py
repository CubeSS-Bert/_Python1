import turtle as turtle


from utils.usefull_functions import teken_parallellogram, teken_veelhoek




teken_veelhoek(6, 100, "CW")
teken_parallellogram("X",100, "CCW", "Red")


def print_woord(woord, naam="jef"):
    print(woord)
    print(naam)

print_woord("hallo")
print_woord("hallo", 1)
print_woord("hallo", "bert")




turtle.done()

