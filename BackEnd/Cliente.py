
from cmath import inf
from urllib import request

import requests
from Cuenta import Cuenta

url='https://raw.githubusercontent.com/strlla/itbank/develop/BackEnd/data/ejemplo_Black.json'
data=requests.get(url).json()
print(data)
class Cliente():
    def crear_cuenta(self,tipo_cuenta):
        if tipo_cuenta=="Classic":
            self.cuenta=Cuenta(self.Caracteristicas_Classic['caracteristicas_cuenta']['limite_extraccion_diario'],self.Caracteristicas_Classic['caracteristicas_cuenta']['limite_transferencia_recibida'],self.Caracteristicas_Classic['caracteristicas_cuenta']['costo_transferencias'],self.Caracteristicas_Classic['caracteristicas_cuenta']['saldo_descubierto_disponible'])
        elif tipo_cuenta=="Gold":
            self.cuenta=Cuenta(self.Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],self.Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],self.Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],self.Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible'])
        elif tipo_cuenta=="Black":
            self.cuenta=Cuenta(self.Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],self.Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],self.Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],self.Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible'])
        else:   
            raise ValueError("Tipo de cuenta no existe. Por favor elija un tipo de cuenta válido: Classic, Gold o Black")

    Caracteristicas_Classic = {
    'limite_chequeras': 0,
    'limite_tajetas_credito': 0,
    'cuenta_en_dolares': False,
    'caracteristicas_cuenta': {
     'limite_extraccion_diario': 10000,
        'limite_transferencia_recibida': 50000,
        'costo_transferencias': 0.01,
        'saldo_descubierto_disponible': 0
    }
 }
    Caracteristicas_Gold = {
    'limite_chequeras': 1,
    'limite_tajetas_credito': 1,
    'cuenta_en_dolares': True,
    'caracteristicas_cuenta': {
        'limite_extraccion_diario': 20000,
        'limite_transferencia_recibida': 500000,
        'costo_transferencias': 0.005,
        'saldo_descubierto_disponible': 10000
    }
    }
    Caracteristicas_Black = {
    'limite_chequeras': 2,
    'limite_tajetas_credito': 5,
    'cuenta_en_dolares': True,
    'caracteristicas_cuenta': {
        'limite_extraccion_diario': 100000,
        'limite_transferencia_recibida': inf,
        'costo_transferencias': 0,
        'saldo_descubierto_disponible': 10000
    }
    }

    def __init__(self,nombre,apellido,numeroCliente,dni,__tier__):
        self.nombre=nombre
        self.apellido=apellido
        self.numeroCliente=numeroCliente
        self.dni=dni
        self.__tier__=__tier__.capitalize()

       # self.cuentas={a agregar} -> Falta crear clase Cuenta
        if self.nombre=="" or self.apellido=="" or self.numeroCliente=="" or self.dni=="" or self.__tier__=="":
            raise ValueError("Hay algun campo vacio")

        else:
            self.crear_cuenta(self.__tier__)    

    def __repr__(self):
      return f"Nombre completo: {self.nombre} {self.apellido}\nNum de Cliente: {self.numeroCliente}\nDni: {self.dni} \nTier: {self.__tier__}"
    

    def puede_crear_chequera(self, chequeras_actuales=0):
        self.chequeras_actuales = chequeras_actuales

        if self.__tier__ == "Classic":
            return("No se admite la creación de chequeras para clientes Classic", False)

        elif self.__tier__ == "Gold":
            if self.chequeras_actuales == 0:
                return("Puede crear una chequera",True)     
            else:
                return("Ha alcanzado el limite de chequeras",False)    


        elif self.__tier__ == "Black":  
            if self.chequeras_actuales <= 1:
                restantes = 2 - chequeras_actuales
                return(f"Puede crear {restantes} chequera/s", True)     
            else:
                return("Ha alcanzado el limite de chequeras", False)    


    def puede_crear_tarjeta_credito(self, tarjetas_actuales=0):
        self.tarjetas_actuales = tarjetas_actuales

        if self.__tier__ == "Classic":
            return ("No se admite la creación de tarjetas de crédito para clientes Classic", False)

        elif self.__tier__ == "Gold":
            if self.tarjetas_actuales == 0:
                return ("Puede crear una tarjeta de crédito", True) 
            else:
                return ("Ha alcanzado el limite de tarjetas", False)    

        elif self.__tier__ == "Black":  
            if self.tarjetas_actuales <= 4:
                restantes = 5 - tarjetas_actuales
                return (f"Puede crear {restantes} tarjetas/s", True)    
            else:
                return ("Ha alcanzado el limite de tarjetas",False)    

    def puede_comprar_dolar(self):
        if self.__tier__ == "Classic":
            return ("No se admite la compra de dólares para clientes Classic", False)
        elif self.__tier__ == "Gold":
            return("Puede comprar dólares", True)     
        elif self.__tier__ == "Black":   
            return("Puede comprar dólares", True)     
                      


cliente_1=Cliente("Juan","Perez","123456789","12345678","BLACK")
print(f"\nDatos del cliente:\n{cliente_1}\n\nDatos de la cuenta:\n{cliente_1.cuenta}\n")
print(cliente_1.puede_crear_chequera(2)[0])
print(cliente_1.puede_crear_tarjeta_credito()[0])
print(cliente_1.puede_comprar_dolar()[0])