import json
from json2html import *

path= r'D:\Estrella\Projects\ITBA\itbank\BackEnd\data\ejemplo.json'
with open(path) as file:
    data = json.load(file)
    print(data)
                         
# with open(path) as file:
#     data = json.load(file)
#     scanOutput = json2html.convert(json=data)
#     htmlHomeFile =  r'D:\Estrella\Projects\ITBA\itbank\home.html'
#     with open(htmlHomeFile, 'w') as htmlfile:
#         htmlfile.write(str(scanOutput));
#     print(data)
                                                  