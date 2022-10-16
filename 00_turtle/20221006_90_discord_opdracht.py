
# ********************************************************* Discord - Opdracht(1)
# for n in range(10):
#     print(n+1)

# i = 1
# while i < 10:
#     print(i+1)
#     i+=1

# ********************************************************* Discord - Opdracht(2/3)
# def collatz(number):
#     result = int(0)    
#     if ( number % 2 ) == 0 :
#         result = number // 2
#     else:
#         result = 3 * number + 1
#     print(result)
#     return result        

# # print(collatz(4))
# # print(collatz(5))
# startinteger = 550
# while collatz(startinteger) > 1:
#     startinteger = collatz(startinteger)

# ********************************************************* Discord - Opdracht(4)
# import math

# def bereken_volume_bol(straal):
#     volume = float(0)
#     volume = 4/3 * math.pi * ( straal ** 3 )
#     return volume

# def bereken_oppervlakte_bol(straal):
#     oppervlakte = float(0)
#     oppervlakte = 4 * math.pi * ( straal ** 2 )
#     return oppervlakte

# print(bereken_volume_bol(25))
# print(bereken_oppervlakte_bol(25))

# ********************************************************* Discord - Opdracht(5)
# import math

# def bereken_kostprijs_pizza(diameter, prijs):
#     prijsvierkantecm = float(0)
#     prijsvierkantecm = prijs / ( math.pi * (( diameter / 2 ) ** 2))
#     return prijsvierkantecm

# print(bereken_kostprijs_pizza(35, 18))

# # ********************************************************* Discord - Opdracht(6/7)
# from cgi import print_arguments
# import math
# from utils.usefull_classes import Point
# Punt_1 = Point(0,0)
# Punt_2 = Point(0,0)

# def bereken_helling(punt_1=Point(0,0), punt_2=Point(0,0)):
#     helling = float(0)
#     helling = ( punt_2.posy - punt_1.posy ) / ( punt_2.posx - punt_1.posx )
#     return helling

# def bepaal_afstand_tussen(punt_1=Point(0,0), punt_2=Point(0,0)):
#     afstand = float(0)
#     afstand = math.sqrt((( punt_2.posx - punt_1.posx ) ** 2 ) + (( punt_2.posy - punt_2.posy ) ** 2 ))
#     return afstand

# InputPunt_1_x = float(input(f"Geef voor eerste punt, coördinaat x (float): "))
# InputPunt_1_y = float(input(f"Geef voor eerstGeefe punt, coördinaat y (float): "))
# Punt_1.set_xy(InputPunt_1_x, InputPunt_1_y)
# InputPunt_2_x = float(input(f"Geef voor tweede punt, coördinaat x (float): "))
# InputPunt_2_y = float(input(f"Geef voor tweede punt, coördinaat y (float): "))
# Punt_2.set_xy(InputPunt_2_x, InputPunt_2_y)

# # print(Punt_1.posx)
# print(bereken_helling(Punt_1, Punt_2))
# print(bepaal_afstand_tussen(Punt_1, Punt_2))

# ********************************************************* Discord - Opdracht(8)
# aantal = int(input("Geef eindgetal: "))
# som = 0

# for n in range(aantal+1):
#     som += n
#     print(som, n)

# ********************************************************* Discord - Opdracht(9)
# maximum_aantal_getallen = int(input("Geef maximum aantal getallen die opgeteld dienen te worden: "))
# som = int(0)

# for n in range(maximum_aantal_getallen):
#     getal = int(input(f"Geef getal {n+1}/{maximum_aantal_getallen}: "))
#     som += getal

# print(som)


