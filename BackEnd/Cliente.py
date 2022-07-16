
from Cuenta import Cuenta


class Cliente():
    def __init__(self,nombre,apellido,numeroCliente,dni,__tier__):
        self.nombre=nombre
        self.apellido=apellido
        self.numeroCliente=numeroCliente
        self.dni=dni
        self.__tier__=__tier__

       # self.cuentas={a agregar} -> Falta crear clase Cuenta
        if self.nombre=="" or self.apellido=="" or self.numeroCliente=="" or self.dni=="" or self.__tier__=="":
            raise ValueError("Hay algun campo vacio")

    def __repr__(self):
      return f"Nombre completo: {self.nombre} {self.apellido}\nNum de Cliente: {self.numeroCliente}\nDni: {self.dni} \nTier: {self.__tier__}"
    def crear_cuenta(self,tipo_cuenta):
        if tipo_cuenta=="Classic":
            self.cuenta=Cuenta(self.Caracteristicas_Classic['caracteristicas_cuenta']['limite_extraccion_diario'],self.Caracteristicas_Classic['caracteristicas_cuenta']['limite_transferencia_recibida'],self.Caracteristicas_Classic['caracteristicas_cuenta']['costo_transferencias'],self.Caracteristicas_Classic['caracteristicas_cuenta']['saldo_descubierto_disponible'])
        elif tipo_cuenta=="Gold":
            self.cuenta=Cuenta(self.Caracteristicas_Gold['caracteristicas_cuenta']['limite_extraccion_diario'],self.Caracteristicas_Gold['caracteristicas_cuenta']['limite_transferencia_recibida'],self.Caracteristicas_Gold['caracteristicas_cuenta']['costo_transferencias'],self.Caracteristicas_Gold['caracteristicas_cuenta']['saldo_descubierto_disponible'])
        elif tipo_cuenta=="Black":
            self.cuenta=Cuenta(self.Caracteristicas_Black['caracteristicas_cuenta']['limite_extraccion_diario'],self.Caracteristicas_Black['caracteristicas_cuenta']['limite_transferencia_recibida'],self.Caracteristicas_Black['caracteristicas_cuenta']['costo_transferencias'],self.Caracteristicas_Black['caracteristicas_cuenta']['saldo_descubierto_disponible'])
        else:   
            raise ValueError("Tipo de cuenta no existe")

    Caracteristicas_Classic = {
    'limite_chequeras': -1,
    'limite_tajetas_credito': -1,
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
        'limite_transferencia_recibida': -1,
        'costo_transferencias': 0,
        'saldo_descubierto_disponible': 10000
    }
    }

cliente_1=Cliente("Juan","Perez","123456789","12345678","Classic")
cliente_1.crear_cuenta("Classic")
print(f"Datos del cliente:\n{cliente_1}\nDatos de la cuenta:\n{cliente_1.cuenta}")

