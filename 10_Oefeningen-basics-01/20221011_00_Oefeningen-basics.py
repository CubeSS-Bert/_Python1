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

# ************************************************ 01.10
reeks = input("Geef een string van cijfers en letters.")
counter_cijfers = 0
counter_letters = 0
# aantal_tekens = len(reeks)
print(len(reeks))

for m in reeks:
    # print(m)
    for n in range(10):
        try:
            int(m)
            # print(m)
            counter_cijfers += 1
            break
        except:
            counter_letters += 1
            break
            pass

print(counter_cijfers)
print(counter_letters)

# ************************************************ 01.11


     
