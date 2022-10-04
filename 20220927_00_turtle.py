import turtle as turtle
# from turtle import *
# best niet gebruiken omdat men dan niet meer weet van welke functie het komt
# zou dan 'done()' rechtstreeks kunnen gebruiken - maar van waar komt het eigenlijk


turtle.title('Hoofding')
turtle.circle(100)
turtle.shape('square')
turtle.forward(100)
turtle.circle(10)
turtle.shape('turtle')
turtle.left(45)
turtle.forward(100)
turtle.shape('arrow')

turtle.forward(100)
turtle.left(90)
turtle.forward(100)
turtle.left(90)
turtle.forward(100)
turtle.left(90)
turtle.forward(100)
turtle.left(90)

turtle.right(135)
turtle.forward(250)

turtle.forward(55)
turtle.left(72)
turtle.forward(55)
turtle.left(72)
turtle.forward(55)
turtle.left(72)
turtle.forward(55)
turtle.left(72)
turtle.forward(55)
turtle.left(72)
turtle.forward(55)
turtle.left(72)

print(turtle.position())

turtle.begin_poly()
turtle.fd(45)
turtle.left(15)
turtle.fd(65)
turtle.left(25)
turtle.fd(66)
turtle.left(45)
turtle.end_poly

print(turtle.position())


turtle.home()
print(turtle.position())






# turtle.done()
turtle.mainloop()
