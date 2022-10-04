import turtle as turtle


turtle.shape("turtle")

# def naam_functie(inputf, naam):
#     if inputf == "turtle" or inputf == "Turtle":
#         print(f"Ok {naam}")
#     elif inputf == "arrow":
#         print("Nok")
#     else: print("ddd")


# naam_functie("turtle", "Jos")


def teken_vierkant():
    for n in range(4):
        turtle.forward(90)
        turtle.left(360/4)

def teken_driehoek():
    for n in range(3):
        turtle.forward(90)
        turtle.left(360/3)

def teken_cirkel():
    for n in range(25):
        turtle.forward(45)
        turtle.left(360/25)

teken_vierkant()
turtle.setpos(0,90)
teken_driehoek()
turtle.setpos(0,-120)
teken_cirkel()
turtle.circle(12.0)

turtle.color("black", "yellow")
turtle.begin_fill()
turtle.circle(65.0)
turtle.end_fill()


turtle.fillcolor("red")


turtle.done()


    



    
    
        
