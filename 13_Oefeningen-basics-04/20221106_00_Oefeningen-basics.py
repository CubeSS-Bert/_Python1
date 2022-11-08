# ************************************************ 04.01
# reeks_getallen_ingegeven = []

# def gemiddelde_reeks_getallen(*reeks_getallen):
#     som = 0.0
#     gemiddelde = 0.0
#     for getal in reeks_getallen:
#         som += getal
#     gemiddelde = som / len(reeks_getallen)
#     return round(gemiddelde, 2)

# reeks_getallen_ingegeven = [float(n) for n in input("Geef een reeks van getallen (gescheiden door komma) waarvan u het gemiddelde wilt weten.").split(',')]
# # print(reeks_getallen_ingegeven)
# print(gemiddelde_reeks_getallen(*reeks_getallen_ingegeven))

# ************************************************ 04.02
# import math as math

# invoer_stappen = 1
# invoer_ongeldig = True

# def pi_berekenen(stappen):
#     pi = 0.0
#     optellen = True
#     for actuele_stap in range(stappen):
#         # print(actuele_stap)
#         # print(optellen)
#         if optellen:
#             pi += 4 / (actuele_stap*2+1)
#         else:
#             pi += -4 / (actuele_stap*2+1)
#         optellen = not optellen
#     return pi, math.pi, math.pi-pi

# while invoer_ongeldig:
#     invoer_stappen = input("Geef het aantal stappen waarin u 'PI' wilt benaderen?")
#     try:
#         int(invoer_stappen)
#         if int(invoer_stappen) >= 1:
#             invoer_ongeldig = False
#         else:
#             print("Aantal stappen moet minstens 1 zijn!")    
#     except:
#         print("Aantal stappen moet een getal zijn!")

# print(pi_berekenen(int(invoer_stappen)))    

# ************************************************ 04.03
# invoer_ongeldig = True

# def rij_fibonacci(aantal_getallen):
#     som = 0
#     lijst_fibonacci = []
#     for n in range(aantal_getallen):
#         if n <= 1:
#             lijst_fibonacci.append(1)
#             som += lijst_fibonacci[n]
#         else:
#             som = lijst_fibonacci[n-2] + lijst_fibonacci[n-1]
#             lijst_fibonacci.append(som) 
#     return som, lijst_fibonacci

# while invoer_ongeldig:
#     index = input("Van het hoeveelste element uit de reeks van Fibonacci wilt u de waarde weten?")
#     try:
#         int(index)
#         if int(index) > 0:
#             invoer_ongeldig = False
#         else:
#             print("Ingave moet minstens 1 zijn!")    
#     except:
#         print("Ingave moet een getal zijn.")

# print(rij_fibonacci(int(index)))    
    
# ************************************************ 04.04
import math as math

def wortel_verschil()

invoer_getal, invoer_aantal = [int(n) for n in (input("Geef (gescheiden door een komma) een getal waarvan we de wortel gaan raden, en in het aantal keer dat onze gok dienen te verfijnen.").split(','))]
print(math.sqrt(invoer_getal), invoer_aantal)




class Kaart():

    def __init__(self, soort, waarde):
        self.soort = soort
        self.waarde = waarde
        
    def toon_kaart(self):
        print(str(self.soort)+ " " + str(self.waarde))

class Deck():

    kaarten_deck = []

    def __init__(self):
        self.aanmaken_deck()
        
    def aanmaken_deck(self):
        for soort in ['Ruiten', 'Harten', 'Klaveren', 'Schoppen']:
            for waarde in ['Aas', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Boer', 'Koningin', 'Koning']:
                self.kaarten_deck.append(Kaart(soort, waarde))
    
    def toon_deck(self):
        for kaart in self.kaarten_deck:
            kaart.toon_kaart()
            
    def doorheen_schudden_deck(self):
        self.doorheen_schudden_deck = random.shuffle(self.kaarten_deck)


    def deel_kaart_uit_deck(self):
        self._deel_kaart_uit_deck = self.kaarten_deck.pop()
        return self._deel_kaart_uit_deck

class Speler(Deck):

    def __init__(self, naam):
        self.naam = naam
        self._hand_speler = []

    def kaart_ontvangen_uit_deck(self, deck):
        self._hand_speler.append(deck.deel_kaart_uit_deck())

    def toon_hand_speler(self):
        for kaart in self._hand_speler:
            kaart.toon_kaart()


    