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
        



alta_chequera().resolver(cliente_1,"")