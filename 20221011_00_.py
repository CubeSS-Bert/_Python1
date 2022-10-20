
# --------------------------------------------- bibliotheken
import random

# --------------------------------------------- Cte
# Definieer aantal spelers: minimum=1 (tegen 'computer'), maximum=2
AANTAL_SPELERS = 2
# Definieer tot aantal gewonnen spelletjes: minimum=1, maximum=10
AANTAL_GEWONNEN_SPELLETJES = 5
# Configuratie: Blad, steen, papier
BLAD_STEEN_PAPIER = ((1, "Blad"), (2, "Steen"), (3, "Papier"))

# --------------------------------------------- Functies
def ophalen_input_van_speler():
    keuze = input("Geef een getal van 1 tem 3 > 1=Blad, 2=Steen, 3=Papier: ")
    try:
        int(keuze)   
    except:
        input("Geef een getal van 1 tem 3 > 1=Blad, 2=Steen, 3=Papier: ")
    
    
    
    return keuze
    
user1_keuze = ophalen_input_van_speler()
print(user1_keuze)
