import turtle as turtle


coordinaten =[(10,100), (20,50), (30, 0)]
letters = "abc"

# Loop in loop
for coord_a in coordinaten:
    for coord_b in coordinaten:
        print("A - Posx", coord_a[0])
        print("A - Posy", coord_a[1])
        print("B - Posx", coord_b[0])
        print("B - Posy", coord_b[1])

    
    
# Loop in loop
for A in range(3):
    for B in letters:
        print(A, "-", B)


