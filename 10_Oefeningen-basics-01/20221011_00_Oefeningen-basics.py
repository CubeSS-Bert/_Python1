# ************************************************ 01.1
# print(3*4)

# ************************************************ 01.2
# if 4.6 < 5:
#     print("<")
# else: print(">=")

# ************************************************ 01.3
# leeftijd = int(input("Geef uw leeftijd: "))
# if leeftijd > 18:
#     print("ok")
#     exit

# ************************************************ 01.4
# import random as random

# getal = int(random.random()*100)
# print(getal)

# if getal%2==0:
#     print(f"Getal {getal} is even")
# else: 
#     print(f"Getal {getal} is oneven")
    
# # ************************************************ 01.5
# PENSIOEN_LEEFTIJD = int(67)
# naam = str(input("Geef uw naam: "))
# leeftijd = int(input("Wat is uw leeftijd? "))
# aantal_jaren_tot_pensioen = PENSIOEN_LEEFTIJD - leeftijd
# print(f"{naam}, binnen {aantal_jaren_tot_pensioen} jaar kan u op pensioen.")

# ************************************************ 01.6
# getal = int(input("Geef een getal tussen 1 en 100: "))

# if getal%2==0:
#     print(f"Getal {getal} is even")
# else: 
#     print(f"Getal {getal} is oneven")

# ************************************************ 01.7
# quotering = "F"
# getal = int(input("Geef een getal  van 0 tot 20:"))

# if getal < 5:
#     quotering = "F"
# elif getal < 9:
#     quotering = "E"
# elif getal < 12:
#     quotering = "D"
# elif getal < 15:
#     quotering = "C"
# elif getal < 18:
#     quotering = "B"
# else: quotering = "A"

# print(quotering)

# ************************************************ 01.8
# getal = int(input("Geef een getal tussen 1 en 10:"))
# for n in range(getal):
#     if n != 0:
#         print(n)

# ************************************************ 01.9
# getal = int(input("Geef een getal tussen 1 en 60:"))

# print("Alle getallen die deelbaar zijn door 9:")
# for n in range(getal):
#     if (n%9)==0:
#         print(n)

# ************************************************ 01.10 - verkeerde interpretatie
# reeks = input("Geef een string van cijfers en letters.")
# counter_cijfers = 0
# counter_letters = 0
# # aantal_tekens = len(reeks)
# print(len(reeks))

# for m in reeks:
#     # print(m)
#     for n in range(10):
#         try:
#             int(m)
#             # print(m)
#             counter_cijfers += 1
#             break
#         except:
#             counter_letters += 1
#             break
#             pass

# print(counter_cijfers)
# print(counter_letters)

# ************************************************ 01.10 - 'juiste' interpretatie
# reeks = input("Geef een string om te analyseren: ")
# reeks_unieke_letters = []
# counter_hoeveel_komt_letter_voort = 0

# for m in reeks[::]:
#     if m not in reeks_unieke_letters:
#         reeks_unieke_letters.append(m)
# print(reeks_unieke_letters)

# for m in reeks_unieke_letters[::]:
#     counter_hoeveel_komt_letter_voort = 0
#     for n in reeks[::]:
#         if n == m:
#             counter_hoeveel_komt_letter_voort += 1
#     print(m,' = ',counter_hoeveel_komt_letter_voort)
   
# ************************************************ 01.11
# aantal_limonades = float(input("Geef het aantal limonades dat u wil aanschaffen: "))
# prijs_limonade = 3.0
# totale_prijs_limonades = 0.0
# PERCENTAGE_KORTING = 0.05
# PERCENTAGE_DREMPEL = 10.0

# totale_prijs_limonades = (aantal_limonades * prijs_limonade)
# if aantal_limonades >= PERCENTAGE_DREMPEL:
#     totale_prijs_limonades = totale_prijs_limonades * (1 - PERCENTAGE_KORTING)

# print(totale_prijs_limonades)
     
# ************************************************ 01.12
# aantal_limonades = 0
# prijs_limonade = 3.0
# totale_prijs_limonades = 0.0

# while aantal_limonades <= 0:
#     aantal_limonades = int(input("Geef het aantal limonades dat u wil aanschaffen: "))

# totale_prijs_limonades = prijs_limonade * aantal_limonades
# print(f"Beste klant, voor {aantal_limonades} limonades is het in totaal {totale_prijs_limonades} €")

# ************************************************ 01.13
# getal = int(input("Geef een willekeurig geheel getal: "))

# for n in range(11):
#     print(n, 'x', getal, '= ', n*getal)
    
# ************************************************ 01.14
# antwoord_werk = input("Heeft u werk momenteel? ")

# if antwoord_werk == "ja":
#     print("Veel werkplezier")
# else:
#     antwoord_opleiding = input("Heeft u soms interesse in een opleiding? ")
#     if antwoord_opleiding == "ja":
#         print("Je vindt opleidingen op www.syntra-ab.be")
#     else:
#         print("Je vindt vacatures op www.vdab.be/jobs")

# ************************************************ 01.15
# from utils.usefull_classes import Dobbelsteen
import random as random

class Dobbelsteen:
    '''
    Class 'Point'
    * attributes:
        - kleur
        - 
    * Methods:
        - gooien
    '''
    
    def __init__(self, kleur="Red"):
        kleur = str()
        
    def __str__(self):
        return f"Dobbelsteen met kleur {self.kleur}."
    
    def __gooien__(self, resultaat=6):
        self.resultaat = random.randint(1,6)
        # self.resultaat = 6
        return self.resultaat

dobbelsteen_1 = Dobbelsteen()

print(dobbelsteen_1.kleur)
for n in range(4):
    print(dobbelsteen_1.__gooien__())
