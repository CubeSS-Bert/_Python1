import turtle as turtle
from utils.usefull_functions import teken_huis

# object
class Point:
    '''
    Class 'Point'
    * attributes:
        - posx
        - posy
    * Methods:
        - 
    '''
    
    def __init__(self):
        self.posx = float()
        self.posy = float()
        
    def __str__(self):
        return f"Coordinaten PosX={self.posx}, PosY={self.posy}"
    
    def set_xy(self, posx, posy):
        self.posx = posx
        self.posy = posy
        
        
home = Point()
endpoint = Point()
print(home)
home.set_xy(12.0,24.0)
endpoint.set_xy(55.5, 66.6)
print(home)
print(endpoint)



    
