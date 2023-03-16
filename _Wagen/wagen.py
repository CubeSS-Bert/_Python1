from besturing import Besturing
from versnellingsbak import Versnellingsbak


class Wagen:
    
    
    def __init__(self, merk, model):
        self.merk = merk
        self.model = model
        self.besturing = Besturing(self)
        self.versnellingsbak = Versnellingsbak(0, False)   
        
    def rij_vooruit(self):
        print(self.besturing.versnelling)
        print(self.besturing.gaspedaal)
        print('************************************')
        
        if self.besturing.versnelling > 0 and self.besturing.gaspedaal > 0:
            print('De '+self.merk+' is vooruit aan het rijden.')
        else:
            print('De '+self.merk+' staat stil.')    
                      
    
    def rij_achteruit(self):
        pass
    
    
    def stoppen(self):
        pass
    
    
    def draai_links(self):
        pass
    
    
  
car_1 = Wagen('Ford', 'Transit')
car_1.besturing.gas_geven(1)
car_1.besturing.versnelling_kiezen(3)
car_1.besturing.gas_geven(0)
    
    