




class Besturing:
    
    def __init__(self, wagen, versnelling=0, toerental=0, draairichting=0):
        self.versnelling = versnelling
        self.toerental = toerental
        self.draairichting = draairichting
        self.wagen = wagen
        
        
    def gaspedaal_indrukken(self, toerental):
        if toerental != self.toerental:
            self.toerental = toerental
            self.wagen.check_beweging()
        
            
    def versnelling_kiezen(self, versnelling):
        if versnelling != self.versnelling:
            self.versnelling = versnelling
            self.wagen.check_beweging()
        
    
    def richting_kiezen(self, draairichting):
        if draairichting != self.draairichting:
            self.draairichting = draairichting
            self.wagen.check_beweging()
    
    
    
    
    