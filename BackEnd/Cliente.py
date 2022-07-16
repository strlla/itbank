
from Cuenta import Cuenta


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
        'limite_transferencia_recibida': -1,
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
    

    def puede_crear_chequera(self):
        if self.__tier__ == "Classic":
            print("No se admite la creación de chequeras para clientes Classic")
            return False
        elif self.__tier__ == "Gold":
            print("Puede crear una chequera")     
            return True
        elif self.__tier__ == "Black":   
            print("Puede crear hasta 2 chequeras")     
            return True   

    def puede_crear_tarjeta_credito(self):
        if self.__tier__ == "Classic":
            print("No se admite la creación de tarjetas de crédito para clientes Classic")
            return False
        elif self.__tier__ == "Gold":
            print("Puede crear una tarjeta de crédito")     
            return True
        elif self.__tier__ == "Black":   
            print("Puede crear hasta 5 tarjetas de crédito")     
            return True   


    def puede_comprar_dolar(self):
        if self.__tier__ == "Classic":
            print("No se admite la compra de dólares para clientes Classic")
            return False
        elif self.__tier__ == "Gold":
            print("Puede comprar dólares")     
            return True
        elif self.__tier__ == "Black":   
            print("Puede comprar dólares")     
            return True                          



cliente_1=Cliente("Juan","Perez","123456789","12345678","BLACK")
print(f"\nDatos del cliente:\n{cliente_1}\n\nDatos de la cuenta:\n{cliente_1.cuenta}\n")
cliente_1.puede_crear_chequera()    
cliente_1.puede_comprar_dolar()
cliente_1.puede_crear_tarjeta_credito()


