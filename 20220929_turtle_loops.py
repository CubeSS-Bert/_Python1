import turtle as t

t.shape("arrow")


aantal_hoeken = int(input('Aantal hoeken? '))
counter = 0

while(counter < aantal_hoeken):
    counter = counter + 1
    t.forward(90)
    for n in range(aantal_hoeken):
        print(n)
        t.forward(90)
        t.left(360/aantal_hoeken)





    
t.done()
