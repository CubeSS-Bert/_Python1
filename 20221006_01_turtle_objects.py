import turtle as turtle
from utils.usefull_functions import teken_huis

# object
class Huis:
    '''
    Dit is een huis in turtle
    '''
    
    def __init__(self):
        # self.lengte = 0
        # self.lengte = lengte
        self.lengte = int()
    
    def __str__(self):
        return f"Huis met lengte {self.lengte}"
    
    def set_lengte(self, lengte):
        self.lengte = lengte
        
    def get_lengte(self):
        return self.lengte
    
    def teken(self):
        teken_huis(self.lengte, self.lengte)
    
    
    

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

turtle.done()