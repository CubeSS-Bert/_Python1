import turtle as turtle

# Globale variabele
TOTAAL_AANTAL_GRADEN = 360


# Zet startpositie
def zet_startpositie(positie_x, positie_y, orientatie):
    turtle.setx(positie_x)
    turtle.sety(positie_y)
    turtle.setheading(orientatie)

# Teken vierkant
def teken_vierkant(lengte):
    for n in range(4):
        turtle.forward(lengte)
        turtle.left(TOTAAL_AANTAL_GRADEN/4)

# Teken driehoek
def teken_driehoek(lengte):
    for n in range(3):
        turtle.forward(lengte)
        turtle.left(360/3)

# Teken huis
def teken_huis(lengte_vierkant, lengte_driehoek):
    teken_vierkant(lengte_vierkant)
    turtle.setheading(90)
    turtle.forward(lengte_vierkant)
    turtle.setheading(0)
    # turtle.sety(lengte_vierkant)
    teken_driehoek(lengte_driehoek)

# Teken veelhoek 
def teken_veelhoek(aantal_hoeken, lengte_zijde, richting):
    for n in range(aantal_hoeken):
        turtle.forward(lengte_zijde)
        if richting == "CW":
            turtle.right(360/aantal_hoeken)
        else: turtle.left(360/aantal_hoeken)

# Teken parallellogram    
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


