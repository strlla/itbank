import json
from json2html import *
import requests

path= 'https://raw.githubusercontent.com/strlla/itbank/develop/BackEnd/data/ejemplo_Black.json'
data = requests.get(path).json()
print(data)
                         
with open(path) as file:
    data = json.load(file)
    scanOutput = json2html.convert(json=data)
    htmlHomeFile =  r'C:\Users\totoc\OneDrive\Escritorio\Programación\ITBA\itbank\BackEnd\pages\home.py'
    with open(htmlHomeFile, 'w') as htmlfile:
        htmlfile.write(str(scanOutput));
    print(data)
                                                  