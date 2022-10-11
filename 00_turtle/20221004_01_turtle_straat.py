import turtle as turtle
from utils.usefull_functions import teken_huis



coordinaten = []
# coordinaten = [1, 12, 45, 2, 14]
# coordinaten.append((0,0))
# print(coordinaten)
# coordinaten.append((100,100))
# # coordinaten.pop()
# # coordinaten.append("er")
# print(coordinaten)
# print(coordinaten[1])
# print(len(coordinaten))
# print(type("a"))
# print(type(coordinaten))
# print(type(coordinaten[0]))

# for x in range(len(coordinaten)):
#     print(type(x))
#     print(coordinaten[x])

# for x in coordinaten:
#     print(type(x))
#     print(x)

coordinaten = [(0, 0), (150, 0), (300, 0), (300, -200), (150, -200), (0, -200)]

for n in range(len(coordinaten)):
    turtle.penup()
    turtle.setposition(coordinaten[n])
    turtle.pendown()
    teken_huis(100,100)

# turtle.penup()   
# turtle.setposition(-450, 0)
# turtle.pendown()
# teken_huis(200, 200)



turtle.done()
