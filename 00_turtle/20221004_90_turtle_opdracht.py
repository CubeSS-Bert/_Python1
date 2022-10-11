from tarfile import LENGTH_NAME
import turtle as turtle
import random as random
from utils.usefull_functions import teken_huis

# Variabelen
coordinaten = [(0, 0, 100)]
i = 1
MAX_AANTAL_HUIZEN = 5



# x aantal huizen tekenen
while i < MAX_AANTAL_HUIZEN:
    LENGTE_ZIJDES = (random.random() * 120 ) + 30
    POSX = (random.random() * 600 ) - 300
    POSY = (random.random() * 600 ) - 300
    # !! Check overlapping, en pas zonodig aan !!
    coordinaten.append(tuple((POSX, POSY, LENGTE_ZIJDES)))
    print(coordinaten[i])
    # print(LENGTE_ZIJDES)
    # print(POSX)
    # print(POSY)
    i += 1
    

# for n in range(len(coordinaten)):
for x, y, zijde in coordinaten:
    print(x, y, zijde)
    turtle.penup()
    turtle.setpos(x,y)
    turtle.pendown()
    teken_huis(zijde,zijde)

turtle.done()