
from cmath import inf
from Direcciones import Direccion
from Cuenta import *
class Cliente(Direccion):
 
    def __init__(self,nombre,apellido,direccion,numeroCliente,dni,__tier__,caracteristicas):
        self.nombre=nombre
        self.apellido=apellido
        self.numeroCliente=numeroCliente
        self.dni=dni
        self.__tier__=__tier__.capitalize()
        self.chequeras=0
        self.limite_chequeras=caracteristicas["limite_chequeras"]
        self.limite_tarjetasCredito=caracteristicas["limite_tajetas_credito"]
        self.limite_extraccion_diario=caracteristicas["caracteristicas_cuenta"]["limite_extraccion_diario"]
        self.tarjetasDebito=0
        self.limite_transferencia_recibida=caracteristicas["caracteristicas_cuenta"]["limite_transferencia_recibida"]
        self.saldo_descubierto_disponible=caracteristicas["caracteristicas_cuenta"]["saldo_descubierto_disponible"]
        self._cuenta_en_dolares=caracteristicas["cuenta_en_dolares"]
        self.tarjetas_credito=0
        if direccion:
            self._direccion = Direccion(*direccion)
        else:
            self._direccion = None

    def puede_comprar_dolares(self):
        return False
    def puede_crear_chequera(self):
        return self.chequeras<=self.limite_chequeras   

    def puede_crear_tarjeta_credito(self):
       return self.limite_tarjetasCredito>=self.tarjetas_credito
    def get_tier(self):
        return self.__tier__
    def cantidad_chequeras(self):
        return self.chequeras
    def __repr__(self):
     return f'{self.nombre} {self.apellido} {self.numeroCliente} {self.dni} {self.__tier__}  \nCuentas: {self.cuentas}'

    

        
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
       self.cuentas=[Caja_ahorro_pesos(Caracteristicas_Classic['caracteristicas_cuenta']["limite_extraccion_diario"],Caracteristicas_Classic['caracteristicas_cuenta']["limite_transferencia_recibida"],Caracteristicas_Classic['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Classic['caracteristicas_cuenta']["saldo_descubierto_disponible"])]
       self.chequeras=Caracteristicas_Classic['limite_chequeras']
       self.tarjetas_credito=Caracteristicas_Classic['limite_tajetas_credito']
       self.tarjetasDebito=1
 
class Gold(Cliente):
    def __init__(self, nombre, apellido, direccion,numeroCliente, dni):
        super().__init__(nombre, apellido, direccion,numeroCliente, dni,'GOLD',Caracteristicas_Gold)
        self.cuentas=[
            Caja_ahorro_pesos(Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Caja_ahorro_dolares(Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Cuenta_corriente(Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible'])
            ]
    def puede_comprar_dolares(self):
        return True
    
    
class Black(Cliente):
    def __init__(self, nombre, apellido, direccion,numeroCliente, dni):
        super().__init__(nombre, apellido, direccion,numeroCliente, dni, 'BLACK',Caracteristicas_Black)
        self.cuentas=[
            Caja_ahorro_pesos(Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Caja_ahorro_dolares(Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible']),
            Cuenta_corriente(Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible'])
            ]
        self.tarjetas_credito=5
        self.tarjetasDebito=2
        self.chequeras=5

    def puede_comprar_dolares(self):
         return True
    

