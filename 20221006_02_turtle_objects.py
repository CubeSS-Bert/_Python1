import turtle as turtle
from utils.usefull_functions import teken_huis
from utils.usefull_classes import Point

home = Point()
endpoint = Point()
print(home)
home.set_xy(12.0,24.0)
endpoint.set_xy(55.5, 66.6)
print(home)
print(endpoint)
endpoint.invert_xy()
print(endpoint)

home.set_startpunt(10.0,30.0)



    
