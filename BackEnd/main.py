from importlib.resources import path
import json
import sys
from Clases.generarRazones import crear_razon

from Clases.Cliente import *





def cargar_data(path):
    "  Cargamos el file y generamos cada cliente con su respectiva transaccion"
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
    return cliente, data['transacciones']



data=cargar_data('./data/ejemplo_Black.json')
transacciones = data[1]
cliente=data[0]
for transaccion in transacciones:
 crear_razon(cliente,transaccion)