# ************************************************ 03.01
# leeftijd = 100
# lijst_bezoekers =[]
# teller_korting = 0

# print("Geef leeftijd in bezoekers.")
# while leeftijd > 0:
#     leeftijd = int(input("/"))
#     lijst_bezoekers.append(leeftijd)

# print(lijst_bezoekers)    
# for leeftijd in lijst_bezoekers:
#     if leeftijd == 0:
#         exit
#     elif leeftijd < 7 or leeftijd > 80:
#         teller_korting = teller_korting + 1
    
# print(f"Aantal bezoekers met korting > {teller_korting} van de {len(lijst_bezoekers) - 1}.")

# ************************************************ 03.02
# temperatuur = 100
# lijst_temperaturen =[]
# lijst_negatieve_temperaturen = []

# print("Geef temperaturen.")
# while temperatuur != 777:
#     temperatuur = int(input("/"))
#     lijst_temperaturen.append(temperatuur)

# for temperatuur in lijst_temperaturen:
#     if temperatuur == 777:
#         exit
#     elif temperatuur <= 0:
#         lijst_negatieve_temperaturen.append(temperatuur)
    
# print(lijst_temperaturen)
# print(lijst_negatieve_temperaturen)

# ************************************************ 03.03
# ************************************************ 03.04
# ************************************************ 03.05
# ************************************************ 03.06
# ************************************************ 03.07
# lijst_personen_spaargeld = [("Jan", 1500), ("Ilse", 4500), ("Bart", 3), ("Tinne", 850), ("Joke", 1001)]

# for persoon in lijst_personen_spaargeld:
#     # print(persoon)
#     if persoon[1] > 1000:
#         print(f"{persoon[0]} heeft een budget van: {persoon[1]} €")

# ************************************************ 03.08
land = "start"
oppervlakte = 0
lijst_land_oppervlakte = []

print("Geef land en bijhorende oppervlakte in km², typ 'stop' als land om ingave te beëindigen.")
land = input("Land: ")
oppervlakte = int(input("Oppervlakte: "))

while land != 'stop':
    lijst_land_oppervlakte.append((land, oppervlakte))
    land = input("Land: ")
    oppervlakte = int(input("Oppervlakte: "))
    
print(lijst_land_oppervlakte)


