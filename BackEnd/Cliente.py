
from cmath import inf
from urllib import request

import requests
from Cuenta import Cuenta

url='https://raw.githubusercontent.com/strlla/itbank/develop/BackEnd/data/ejemplo_Black.json'
data=requests.get(url).json()
print(data)
class Cliente():
    def __init__(self,nombre,apellido,numeroCliente,dni,__tier__):
        self.nombre=nombre
        self.apellido=apellido
        self.numeroCliente=numeroCliente
        self.dni=dni
        self.__tier__=__tier__.capitalize()
        self.transacciones=0
        self.cantidad_chequeras=0
        self.max_chequeras=0
        self.max_tarjetasCredito=0
        self.max_tarjetasDebito=0
        self.tarjetasDebito=0
        self.tarjetas_credito=0
    def puede_comprar_dolares(self):
        return False
    def puede_crear_chequera(self):
        return self.cantidad_chequeras<self.max_chequeras   
    def puede_crear_tarjeta_credito(self):
       return self.max_tarjetasCredito>self.tarjetas_credito
    def puede_crear_tarjeta_debito(self):
        return self.max_tarjetasDebito>self.tarjetasDebito




class Classic(Cliente):
    print('falta completar')


# cliente_1=Cliente("Juan","Perez","123456789","12345678","BLACK")
# print(f"\nDatos del cliente:\n{cliente_1}\n\nDatos de la cuenta:\n{cliente_1.cuenta}\n")
# print(cliente_1.puede_crear_chequera(2)[0])
# print(cliente_1.puede_crear_tarjeta_credito()[0])
# print(cliente_1.puede_comprar_dolar()[0])