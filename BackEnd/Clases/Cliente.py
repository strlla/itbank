
from cmath import inf
from Clases.Cuenta import *
from Clases.Direcciones import *

class Cliente():
    def __init__(self,nombre,apellido,direccion,numeroCliente,dni,__tier__,caracteristicas):
        self.nombre=nombre
        self.apellido=apellido
        self.numeroCliente=numeroCliente
        self.dni=dni
        self.__tier__=__tier__.capitalize()
        self.chequeras=0
        self._cuentas=[]
        self.limite_chequeras=caracteristicas["limite_chequeras"]
        self.limite_tarjetasCredito=caracteristicas["limite_tajetas_credito"]
        self._cuenta_en_dolares=caracteristicas["cuenta_en_dolares"]
        self.tarjetas_credito=0
        
        if direccion:
            self._direccion = Direccion(*direccion.values())
        else:
            self._direccion = None

    def puede_comprar_dolares(self):
        return False
    def puede_crear_chequera(self):
        return self.chequeras<=self.limite_chequeras   
    def setear_tarjetas_de_credito(self,x):
        return self.tarjetas_credito==x
    def get_tier(self):
        return self.__tier__
    def cantidad_chequeras(self):
        return self.chequeras
    def setear_chequeras(self,x):
        return self.chequeras==x
    def get_limite_extraccion_diario(self,cuenta):
        "Funcion para buscar el limite_extraccion_diario en cada una de las 3 cuentas. (La idea seria poder pasar un atributo y buscar el atributo deseado en cada cuenta) "
        for i in self._cuentas:
            if cuenta==i.tipo:
             return i.limite_extraccion_diario
    def get_saldo_descubierto_disponible(self,cuenta):
        "Funcion para buscar el saldo descubierto disponible en la cuenta corriente"
        for i in self._cuentas:
            if i.tipo==cuenta:
             return (i.saldo_descubierto_disponible)
    def get_transferencia_recibida(self,cuenta):
        "Funcion para buscar el limite_transferencia_recibida en cada una de las 3 cuentas. (La idea seria poder pasar un atributo y buscar el atributo deseado en cada cuenta) "
        for i in self._cuentas:
            if cuenta==i.tipo:
             return i.limite_transferencia_recibida

    def __repr__(self):
     return f'{self.nombre} {self.apellido} {self.numeroCliente} {self.dni} {self.__tier__}  \nCuentas: {self._cuentas}'

    

        
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


class Classic(Cliente):
   def __init__(self, nombre, apellido,direccion, numeroCliente, dni):
       super().__init__(nombre, apellido,direccion, numeroCliente, dni, 'Classic',Caracteristicas_Classic)
       self._cuentas=[Caja_ahorro_pesos(Caracteristicas_Classic['caracteristicas_cuenta']["limite_extraccion_diario"],Caracteristicas_Classic['caracteristicas_cuenta']["limite_transferencia_recibida"],Caracteristicas_Classic['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Classic['caracteristicas_cuenta']["saldo_descubierto_disponible"])]
       self.chequeras=Caracteristicas_Classic['limite_chequeras']
       self.tarjetas_credito=Caracteristicas_Classic['limite_tajetas_credito']
       self.tarjetasDebito=1
        

class Gold(Cliente):
    def __init__(self, nombre, apellido, direccion,numeroCliente, dni):
        super().__init__(nombre, apellido, direccion,numeroCliente, dni,'GOLD',Caracteristicas_Gold)
        self._cuentas=[
            Caja_ahorro_pesos(Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Caja_ahorro_dolares(Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Cuenta_corriente(Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible'])
            ]

    def puede_comprar_dolares(self):
        return True
  
class Black(Cliente):
    def __init__(self, nombre, apellido, direccion,numeroCliente, dni):
        super().__init__(nombre, apellido, direccion,numeroCliente, dni, 'BLACK',Caracteristicas_Black)
        self._cuentas=[
            Caja_ahorro_pesos(Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Caja_ahorro_dolares(Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Cuenta_corriente(Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible'])
            ]

    def puede_comprar_dolares(self):
         return True
