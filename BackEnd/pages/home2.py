# probando
# BORRAR SI NO FUNCIONA

import json

def importar_datos(ruta):
    with open(ruta) as file:
        data = json.load(file)
        for datos in data:
            print(data)

if __name__ == '__ejemplo__':
    ruta = 'data/ejemplo.json'
    importar_datos(ruta)
