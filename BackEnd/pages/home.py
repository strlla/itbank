import json
from json2html import *

with open('../data/ejemplo.json') as f: 
        d = json.load(f)
        scanOutput = json2html.convert(json=d)
        htmlReportFile = "../../home.html"
        
        with open(htmlReportFile, 'w') as htmlfile:
                htmlfile.write(str(scanOutput));
                         