




class Besturing:
    
    def __init__(self, wagen, versnelling=0, gaspedaal=0):
        self.versnelling = versnelling
        self.gaspedaal = gaspedaal
        self.wagen = wagen
    
    def gas_geven(self, gaspedaal):
        if gaspedaal != self.gaspedaal:
            self.wagen.rij_vooruit()
        self.gaspedaal = gaspedaal
        
    
    def versnelling_kiezen(self, versnelling):
        if versnelling != self.versnelling:
            self.wagen.rij_vooruit()
        self.versnelling = versnelling
        
    
    
    
    
    
    