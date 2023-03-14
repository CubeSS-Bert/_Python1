import requests


# response = requests.get('https://www.syntraab.be')
# print(response.status_code)


urls = ['https://www.syntraab.be', 'https://www.syntra-ab.be']


def check_url(url):
    try:
        response = requests.get(url)
        print(response.status_code)
    except requests.ConnectionError:
        print(f"{url} not found")
    finally:
        print(f"---------------------------")
        


for url in urls:
    check_url(url)
    
    
    
    
        
        