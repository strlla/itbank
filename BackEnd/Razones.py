from ast import Pass
from mimetypes import init
from Cliente import *
from Direcciones import *


class Razon():
    # Devuelve una respuesta por cada tipo de error que puede llevar a un rechazo de la transacción
    def __init__(self):
     self._mensaje=""
    def getMensaje(self):
        return self._mensaje
    
    def resolver(self,cliente,evento):
        pass


class alta_chequera(Razon):
    def resolver(self, cliente, evento):
     if not cliente.puede_crear_chequera():
        self._mensaje =f"Lo sentimos ud ha superado el limite de chequeras posibles"
        print(self._mensaje)
     if cliente.get_tier()=='Classic' or cliente.get_tier()=='CLASSIC':
            self._mensaje=f"Lo sentimos la categoria {cliente.get_tier()}, no permite realizar esta operación"
            print(self._mensaje)

class Compra_dolar(Razon):
    def resolver(self, cliente, evento):
        if not cliente.puede_comprar_dolares():
            self._mensaje="Lo sentimos pero ud. no se encuentra habilitdao para esta operación"
        elif evento["Monto"]>cliente._cuenta_en_dolares["limite_transferencia_recibida"]:
            self._mensaje="Ud. ha superado el monto de transferencia a recibir"
        else:
            "Lo sentimos no fue posible procesar la transaccion"



class Retiro_efectivo(Razon):
    def resolver(self, cliente, evento):
        if cliente.limite_extraccion_diario<evento["monto"]:
          self._mensaje="Lo sentimos pero no posee fondos suficientes para realizar esta operacion"
          print(self._mensaje)


