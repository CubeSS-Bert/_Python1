import turtle as turtle
from utils.usefull_functions import teken_huis
from utils.usefull_classes import Point

# object
class Huis:
    '''
    Dit is een huis in turtle
    * attributes:
        - lengte
        - naam
    * Methods:
        - set_lengte
        - get_lengte
        - teken?? is dit wel een method??    
    
    '''
    
    
    
    def __init__(self):
        # self.lengte = 0
        # self.lengte = lengte
        self.lengte = int()
        self.naam = ""
        startpunt = Point()
        
    def __str__(self):
        return f"Huis met lengte {self.lengte}"
    
    def set_lengte(self, lengte):
        self.lengte = lengte
        
    def get_lengte(self):
        return self.lengte
    
    def teken(self):
        teken_huis(self.lengte, self.lengte)
    
    def set_naam(self, naam):
        self.naam
    
    def set_startpunt(self, startpunt):
        self.startpunt = startpunt
    

# print(Huis)
# print(help(Huis))
# print(help(4))
# print(help("abc"))

# thuis = Huis(100)
# print(thuis.lengte) 
 
thuis = Huis()
buur = Huis()
print(thuis.lengte) 
thuis.set_lengte(100.0)
buur.set_lengte(50.0)
print(thuis.lengte)
x = thuis.get_lengte()
print(x)
print(f"{thuis.get_lengte()}")
print(thuis)
print(buur)

thuis.teken()
buur.teken()


thuis.startpunt(0.0, 10.0)

turtle.done()