from importlib.resources import path
import json

from Cliente import *

def cargardata(path):
    # Cargamos el file y generamos cada cliente con su respectiva transaccion
    with open(path) as file:
        data = json.load(file)
        if data['tipo'] == 'CLASSIC' or data['tipo'] == 'Classic' :
            cliente = Classic(
                data['nombre'], data['apellido'],  data['direccion'],data['numero'], data['dni'])
        elif data['tipo'] == 'GOLD':
            cliente = Gold(
                data['nombre'], data['apellido'], data['direccion'],data['numero'], data['dni'])
        elif data['tipo'] == 'BLACK':
            cliente = Black(data['nombre'], data['apellido'], data['direccion'],data['numero'], data['dni'] )
    print( cliente, data['transacciones'])

cargardata('../data/ejemplo_Black.json')