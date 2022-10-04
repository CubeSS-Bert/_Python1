import turtle as turtle
# from turtle import *
# best niet gebruiken omdat men dan niet meer weet van welke functie het komt
# zou dan 'done()' rechtstreeks kunnen gebruiken - maar van waar komt het eigenlijk

turtle.shape('turtle')

aantal_hoeken = int(input('Aantal hoeken? '))
for n in range(aantal_hoeken):
    print(n)
    turtle.forward(90)
    turtle.left(360/aantal_hoeken)

   
    
    
turtle.done()