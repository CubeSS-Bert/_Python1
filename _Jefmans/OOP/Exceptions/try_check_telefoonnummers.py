import requests


# response = requests.get('https://www.syntraab.be')
# print(response.status_code)


tel = ["12314155", "13215416548", "1qq'"]
tel_goed = []
tel_slecht = []




def check_nummer(nr):
    try:
        int(nr)
        tel_goed.append(nr)
        try:
            if "8" in nr:
                print("Ok", nr)
            else:
                raise RuntimeError
        except:
            print("8 missing")
    except:
        tel_slecht.append(nr)    
        
        
        
print(tel) 
 

for nr in tel:
    check_nummer(nr)
    
print(tel_goed) 
print("--"*20) 
print(tel_slecht) 
    
    