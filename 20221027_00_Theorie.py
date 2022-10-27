# /***********************************************************************************
# /***********************************************************************************
# L =[0,1,2,3,4,5,6,7,8,9]
# # L = ['a', 'b', 'c', 'd']

# L.reverse()
# print(L)
# #  sort is een methode, resultaat toegepast op zichzelf
# L.sort()
# print(L)
# #  sorted is een functie, returned iets in een andere variabele
# L2 = sorted(L, reverse=True)
# print(L2)

# /***********************************************************************************
# class MyList():
#     def __init__(self, x, y):
#         self.list = [x, y]
        
#     def reverse(self):
#         self.list = [self.list[1], self.list[0]]
    
#     def __str__(self):
#         return f"{[self.list[0], self.list[1]]}"

# list = MyList(2,3)
# print(list)
# # Pakt reverse van de classe waaruit hij gemaakt is, niet van object 'list' in python, maar van class 'MyList'
# list.reverse()
# print(list)

# /***********************************************************************************
#  Blijkbaar wanneer men zoiets toepast op instances van een classe, blijk dit onderstaande niet op te gaan >>>>>> te maken met geheugen ???? globale, lokale variabelen?????
# warm = ["orange", "red", "yellow"]
# hot = warm
# print(hot)

# hot.append('pink')
# print(hot)
# print(warm)

# /***********************************************************************************
# s = 'abc'
# L = [1,2,3,4,5,6]
# X = (88,99,11)

# print(zip(s,L,X))
# for x in zip(s,L,X):
#     print(x)
# for x, y, z in zip(s,L,X):
#     print(z, y, x)

# for index, element in enumerate('abcdef'):
#     print(index, element)

# for index, element in enumerate(X):
#     print(index, element)

# /***********************************************************************************













