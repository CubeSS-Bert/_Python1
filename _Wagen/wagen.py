from besturing import Besturing
from versnellingsbak import Versnellingsbak


class Wagen:
    
    
    def __init__(self, merk, model):
        self.merk = merk
        self.model = model
        self.besturing = Besturing(self)
        self.versnellingsbak = Versnellingsbak(0, False)   
        self.snelheid = 0
        
    def check_beweging(self):
        self.snelheid = self.bepaal_snelheid()
        print(f"Gekozen versnelling: \t{self.besturing.versnelling}")
        print(f"Huidig toerental: \t{self.besturing.toerental}")
        print(f"Gekozen draairichting: \t{self.besturing.draairichting}")
        print(f"Actuele snelheid: \t{self.snelheid}")
                
        if self.besturing.versnelling == 0 or self.besturing.toerental == 0:
            print('De '+self.merk+' staat stil.')    
        elif self.besturing.versnelling > 0 and self.besturing.toerental > 0:
            print('De '+self.merk+' is vooruit aan het rijden.')                    
        elif self.besturing.versnelling < 0 and self.besturing.toerental > 0:
            print('De '+self.merk+' is achteruit aan het rijden.')                    
        else:
            print('De '+self.merk+' staat in ongekende toestand')
        print('************************************')
    
    
    def bepaal_snelheid(self):
        if self.besturing.versnelling < 0:
            return self.besturing.toerental * -1
        elif self.besturing.versnelling == 0:
            return 0
        else: 
            return self.besturing.versnelling * 10 + self.besturing.toerental
        
        
    def stoppen(self):
        pass
    
    
    def draai_links(self):
        pass
    
    
  
car_1 = Wagen('Ford', 'Transit')
car_1.besturing.gaspedaal_indrukken(1)
car_1.besturing.richting_kiezen(45)
car_1.besturing.versnelling_kiezen(3)
car_1.besturing.versnelling_kiezen(-1)
car_1.besturing.richting_kiezen(-45)
car_1.besturing.gaspedaal_indrukken(0)
    
    