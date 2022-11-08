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
# # Moldavië	    33.846 km², België	    30.528 km², Lesotho	    30.355 km², Armenië	    29.743 km²
# # Portugal	    92.212 km², Jordanië    89.328 km², Azerbeidzjan	86.600 km²	
# # Turkije       783.562 km², Chili	    756.102 km², Zambia	    752.612 km²
# geen_stop_gegeven = True
# land = ""
# oppervlakte = 0
# oppervlakte_gemiddeld = 0
# oppervlakte_som = 0
# lijst_land_oppervlakte = []
# default_lijst_land_oppervlakte = [('Moldavië', 33846), ('Portugal', 92212), ('Turkije', 783562), ('België', 30528), ('Jordanië', 89328), ('Chili', 756102), ('Lesotho', 30355), ('Zambia', 752612)]

# # print("Geef land en bijhorende oppervlakte in km², typ 'stop' als land om ingave te beëindigen.")
# # while geen_stop_gegeven:
# #     land = input("Land: ")
    
# #     if land != 'stop':
# #         oppervlakte = int(input("Oppervlakte: "))
# #         lijst_land_oppervlakte.append((land, oppervlakte))
# #     else:
# #         geen_stop_gegeven = False
    
# print(default_lijst_land_oppervlakte)
    
# keuze = int(input("""Geef met een nummer aan wat u wilt zien van de landenlijst:
#     1) Lijst van alle landen met hun oppervlakte
#     2) Gemiddelde oppervlakte van alle landen uit de lijst
#     3) Alle landen, met hun oppervlakte, welke onder het gemiddelde liggen van de lijst
#     4) Alle landen, met hun oppervlakte, welke boven het gemiddelde liggen van de lijst 
#     Uw keuze: """))

# for index, land_oppervlakte in enumerate(default_lijst_land_oppervlakte):
#     oppervlakte_som += land_oppervlakte[1]
#     oppervlakte_gemiddeld = oppervlakte_som / (index + 1)
    
# for index, land_oppervlakte in enumerate(default_lijst_land_oppervlakte):
#     if keuze == 1:
#         print(land_oppervlakte[0], land_oppervlakte[1])
#     elif keuze == 3:
#         if land_oppervlakte[1] < oppervlakte_gemiddeld:
#             print(land_oppervlakte[0], land_oppervlakte[1])
#     elif keuze == 4:
#        if land_oppervlakte[1] >= oppervlakte_gemiddeld:
#             print(land_oppervlakte[0], land_oppervlakte[1])
# if keuze == 2:
#     print("De gemiddelde oppervlakte van alle landen uit de lijst: ", int(oppervlakte_gemiddeld), " km²")
            
# ************************************************ 03.09
# geen_stop_gegeven = True
# persoon = ""
# lengte = 0
# lijst_persoon_lengte = []
# default_lijst_persoon_lengte = [('Lore', 168), ('Jan', 175), ('Kim', 193), ('Bram', 184), ('Marta', 153), ('Nina', 153), ('Karel', 173), ('Ilse', 167)]

# # print("Geef naam persoon en bijhorende lengte in cm, typ 'stop' als naam om ingave te beëindigen.")
# # while geen_stop_gegeven:
# #     persoon = input("Naam: ")
    
# #     if persoon != 'stop':
# #         lengte = int(input("Lengte: "))
# #         lijst_persoon_lengte.append((persoon, lengte))
# #     else:
# #         geen_stop_gegeven = False
    
# print(default_lijst_persoon_lengte)

# keuze = int(input("""Geef met een nummer aan wat u wilt zien van de personenlijst:
#     1) Lijst van alle namen met hun lengte
#     2) Kleinste en grootste lengte van alle personen op de lijst
#     3) Alle personen, met hun lengte, die de kleinste(n) is(zijn) van de lijst
#     4) Alle personen, met hun lengte, die de grootste(n) is(zijn) van de lijst 
#     Uw keuze: """))

# lengte_min = min(default_lijst_persoon_lengte, key=lambda t: t[1])[1]
# lengte_max = max(default_lijst_persoon_lengte, key=lambda t: t[1])[1]

# for index, persoon_lengte in enumerate(default_lijst_persoon_lengte):
#     if keuze == 1:
#         print(persoon_lengte[0], persoon_lengte[1])
#     elif keuze == 3:
#         if persoon_lengte[1] == lengte_min:
#             print(persoon_lengte[0], persoon_lengte[1])
#     elif keuze == 4:
#        if persoon_lengte[1] == lengte_max:
#             print(persoon_lengte[0], persoon_lengte[1])
# if keuze == 2:
#     print("Uit de lijst is ", lengte_min, " het minimum, en ", lengte_max, " het maximum.")

# ************************************************ 03.10
# geen_stop_gegeven = True
# productnaam = ""
# aankoopprijs = 0
# verkoopprijs = 0
# verkoopprijs_som = 0
# verkoopprijs_gemiddeld = 0
# lijst_producten = []
# default_lijst_producten = [("Choco", 2.5, 3.0), ("Perensiroop", 5.0, 6.1), ("Confituur", 4.1, 5.3), ("Kaas", 1.2, 3.2), ("Candijsiroop", 8.6, 9.4)]

# # print("Geef productnaam, aankoopprijs en verkoopprijs. Typ 'stop' als productnaam om ingave te beëindigen.")
# # while geen_stop_gegeven:
# #     product = input("Productnaam: ")
    
# #     if product != 'stop':
# #         aankoopprijs = float(input("Aankoopprijs: "))
# #         verkoopprijs = float(input("Verkoopprijs: "))
# #         lijst_producten.append((product, aankoopprijs, verkoopprijs))
# #     else:
# #         geen_stop_gegeven = False
    
# print(default_lijst_producten)
# keuze = int(input("""Geef met een nummer aan wat u wilt zien van de productenlijst:
#     1) Geef zoekterm productnaam op
#     2) Gemiddelde verkoopprijs op de productenlijst
#     3) Geef een onder- en bovengrens voor de verkoopprijs, hierna zal lijst getoond worden van producten die hierin passen
#     Uw keuze: """))

# for index, producten in enumerate(default_lijst_producten):
#     verkoopprijs_som += producten[1]
#     verkoopprijs_gemiddeld = verkoopprijs_som / (index + 1)

# if keuze == 1:
#     zoekterm = input("Geef een zoekterm op om door productenlijst te gaan: ")
#     for index, producten in enumerate(default_lijst_producten):
#         if producten[0].find(zoekterm) != -1:
#             print(producten[0])
# elif keuze == 2:
#     print("De gemiddelde verkoopprijs van alle producten uit de lijst bedraagt: ", round(verkoopprijs_gemiddeld, 2), "€")
# elif keuze == 3:
#     verkoopprijs_ondergrens = float(input("Geef de ondergrens voor de verkoopprijs: "))
#     verkoopprijs_bovengrens = float(input("Geef de bovengrens voor de verkoopprijs: "))
#     for index, producten in enumerate(default_lijst_producten):
#         if verkoopprijs_bovengrens < verkoopprijs_ondergrens:
#             print("Eerste ingave verkoopprijs moet lager liggen dan tweede.")
#         elif producten[2] >= verkoopprijs_ondergrens and producten[2] <= verkoopprijs_bovengrens:
#             print(producten[0], ' --- ', producten[2], '€')

# ************************************************ 03.11
# for rij in range(9):
#     print("")
#     for element in range(5):
#         print((rij * 5 ) + element +1, end=" ")        
        
# for element in range(45):
#     print(element+1, end=" ")
#     if (element+1)%5==0:
#         print("")    
        
# ************************************************ 03.12
# import random as random
# lijst_cijfers_speler = []
# lijst_cijfers_lotto = []
# lijst_cijfers_winnend = []
# aantal_juiste_cijfers = 0

# print("--- Lotto ---")
# print("--- kies uw 6 cijfers ---")

# for n in range(6):
#     nummer = random.randint(1,45)
#     lijst_cijfers_speler.append(int(input(f"Geef een getal op (getal {n+1} ): ")))
#     while nummer in lijst_cijfers_lotto:
#         nummer = random.randint(1,45)
#     lijst_cijfers_lotto.append(nummer)

# # print(lijst_cijfers_speler)    
# # print(lijst_cijfers_lotto)    
# print("De winnende combinatie is : ", lijst_cijfers_lotto)
# print("We gaan nu kijken als u gewonnen heeft.")
# for nummer_te_controleren in lijst_cijfers_speler:
#     if nummer_te_controleren in lijst_cijfers_lotto:
#         aantal_juiste_cijfers += 1
#         lijst_cijfers_winnend.append(nummer_te_controleren)

# print(f"U heeft {aantal_juiste_cijfers} correcte cijfers.")
# print("U heeft de volgende cijfers correct: ", lijst_cijfers_winnend)

# ************************************************ 03.13
# import datetime as datetime

# print("Vandaag zijn we: ", datetime.date.today())
# print("Morgen zijn we: ", (datetime.datetime.now() + datetime.timedelta(days=1)).strftime('%Y-%m-%d'))
# print("Gisteren waren we: ", (datetime.datetime.now() - datetime.timedelta(days=1)).strftime('%Y-%m-%d'))
# print("Volgend jaar zijn we het jaar: ", (datetime.datetime.now() + datetime.timedelta(days=365)).strftime('%Y'))

# ************************************************ 03.14
# import datetime as datetime

# PENSIOEN_LEEFTIJD = 67

# volledige_invoer = False
# geboorte_jaar = 0
# geboorte_maand = 0
# geboorte_dag = 0
# geboorte_datum = datetime.date(1977, 4, 20)
# datum_te_controleren = datetime.date(2000, 1, 1)

# while not volledige_invoer:
#     invoer_geboortedatum = input("Geef uw geboortedatum op, in volgend formaat 'YYYY-mm-dd' > ")
#     try:
#         geboorte_jaar, geboorte_maand, geboorte_dag = [int(i) for i in invoer_geboortedatum.split("-")]
#         geboorte_datum = datetime.date(geboorte_jaar, geboorte_maand, geboorte_dag)
#         volledige_invoer = True
#     except:
#         print("Respecteer het juiste invoerformaat 'YYYY-mm-dd'")

# print("Uw geboortedatum was:", geboorte_datum, "\nDit was op een", geboorte_datum.strftime('%A'), ".")

# datum_te_controleren = datetime.date(geboorte_jaar+18, geboorte_maand, geboorte_dag)
# print("Op ", datum_te_controleren, "bent u 18 jaar geworden.\nDit was op een", datum_te_controleren.strftime('%A'), ".")

# print("Vandaag de dag bent u", datetime.datetime.today().year - geboorte_jaar, "jaar oud.")

# if geboorte_maand == 12:
#     datum_te_controleren = datetime.date(geboorte_jaar+PENSIOEN_LEEFTIJD+1, 1, geboorte_dag)    
# else:
#     datum_te_controleren = datetime.date(geboorte_jaar+PENSIOEN_LEEFTIJD, geboorte_maand+1, geboorte_dag)
# print("In de maand", datum_te_controleren.strftime('%B'), "van het jaar", datum_te_controleren.strftime('%Y'), "mag u op pensioen gaan. (misschien)")

# ************************************************ 03.15
# import datetime as datetime
# import time as time

# DUURTIJD = 8

# code_in_uitvoering = True
# aantal_seconden_bezig = 0
# laatste_seconde_uitgevoerd = int(datetime.datetime.now().strftime('%S')) - 1 

# while code_in_uitvoering:
#     actuele_seconde = int(datetime.datetime.now().strftime('%S'))
#     if actuele_seconde != laatste_seconde_uitgevoerd:
#         print(datetime.datetime.today())
#         laatste_seconde_uitgevoerd = actuele_seconde
#         aantal_seconden_bezig += 1
#         time.sleep(0.9)
#         if aantal_seconden_bezig >= DUURTIJD:
#             code_in_uitvoering = False

# ************************************************ 03.16
# tekst_te_splitsen = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# def tekst_splitsen(tekst):
#     woord_uit_lijst = ''
#     lijst_split = []
#     for index, letter in enumerate(tekst):
#         if letter != ' ' and index != len(tekst)-1:
#             woord_uit_lijst += letter
#         else:
#             lijst_split.append(woord_uit_lijst)
#             woord_uit_lijst = ''
#     return print(lijst_split)

# print(tekst_te_splitsen.split())
# tekst_splitsen(tekst_te_splitsen)


        
        
        
        
        
        
        
        
        
        
        
        