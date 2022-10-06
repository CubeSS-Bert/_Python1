


class Point:
    '''
    Class 'Point'
    * attributes:
        - posx
        - posy
        - startposx
        - startposy
    * Methods:
        - 
    '''
    
    def __init__(self, posx=0.0, posy=0.0):
        self.posx = float()
        self.posy = float()
        
        
    def __str__(self):
        return f"Coordinaten PosX={self.posx}, PosY={self.posy}, StartPosX="
    
    def set_xy(self, posx, posy):
        self.posx = posx
        self.posy = posy

    def invert_xy(self):
        self.posx, self.posy = self.posy, self.posx
        
        
  
  
  