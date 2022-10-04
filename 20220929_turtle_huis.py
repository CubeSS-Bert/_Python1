import turtle as turtle

turtle.shape("turtle")
# aantal_hoeken = int(input("Geef aantal hoeken veelhoek: "))

def teken_vierkant(lengte):
    for n in range(4):
        turtle.forward(lengte)
        turtle.left(360/4)

def teken_driehoek(lengte):
    for n in range(3):
        turtle.forward(lengte)
        turtle.left(360/3)

def teken_huis(lengte_vierkant, lengte_driehoek):
    teken_vierkant(lengte_vierkant)
    turtle.setpos(0,lengte_vierkant)
    teken_driehoek(lengte_driehoek)
    
def teken_veelhoek(aantal_hoeken, lengte_zijde, richting):
    for n in range(aantal_hoeken):
        turtle.forward(lengte_zijde)
        if richting == "CW":
            turtle.right(360/aantal_hoeken)
        else: turtle.left(360/aantal_hoeken)

def teken_parallellogram(scherpe_hoek, lengte_korte_zijde, lengte_lange_zijde):
    for n in range(2):
        turtle.forward(lengte_korte_zijde)
        turtle.left(scherpe_hoek)
        turtle.forward(lengte_lange_zijde)
        turtle.left(180 - scherpe_hoek)
        

# teken_huis(90, 90)


# turtle.color("black", "yellow")
# turtle.begin_fill()
# teken_veelhoek(5,50,"CxW")
# turtle.end_fill()

# turtle.color("black", "red")
# turtle.begin_fill()
# teken_veelhoek(15,80,"CW")
# turtle.end_fill()

# turtle.color("black", "green")
# turtle.begin_fill()
# teken_veelhoek(5,50,"CxW")
# turtle.end_fill()

teken_parallellogram(45, 90, 145)
teken_parallellogram(20, 45, 90)

turtle.done()
