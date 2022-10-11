import turtle as turtle

turtle.shape("arrow")


# functies
def zet_startpositie(positie_x, positie_y, orientatie):
    turtle.setx(positie_x)
    turtle.sety(positie_y)
    turtle.setheading(orientatie)
    
def teken_parallellogram(vlak, lengte_zijde, richting, kleur):
    #  Zet pen neer
    turtle.pendown()
    
    # Zet kleur
    turtle.color("black", kleur)

    # Zet tekenbit richting (CW=negatief, CCW=positief)
    teken = -1
    
    # Zet orientatie "CW"
    if vlak == "X":
        turtle.setheading(-90)
    elif vlak =="Y":
        turtle.setheading(30)
    else: turtle.setheading(150)
    
    # Correctie orientatie "CCW"
    if richting == "CCW":
        teken = 1
        turtle.right(120)
    
    # Tekenen parallellogram  
    turtle.begin_fill()
    for n in range(2):
        turtle.forward(lengte_zijde)
        turtle.left(teken * 120)
        turtle.forward(lengte_zijde)
        turtle.left(teken * 60)
    turtle.end_fill()

    #  Trek pen op
    turtle.penup()
    

zet_startpositie(0, 0, 90)
teken_parallellogram("X", 125, "CW", "Red")
teken_parallellogram("Y", 125, "CW", "Blue")
teken_parallellogram("Z", 125, "CW", "Yellow")

zet_startpositie(0, 150, 90)
teken_parallellogram("X", 125, "CCW", "Red")
teken_parallellogram("Y", 125, "CCW", "Blue")
teken_parallellogram("Z", 125, "CCW", "Yellow")


zet_startpositie(150, -20, 90)
teken_parallellogram("X", 125, "CW", "Red")
teken_parallellogram("Y", 125, "CCW", "Blue")
teken_parallellogram("Z", 125, "CW", "Yellow")



turtle.done()