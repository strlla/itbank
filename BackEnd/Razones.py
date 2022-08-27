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
            print(self._mensaje)
        elif evento["Monto"]>cliente._cuenta_en_dolares["limite_transferencia_recibida"]:
            self._mensaje="Ud. ha superado el monto de transferencia a recibir"
            print(self._mensaje)
        else:
           self._mensaje="Lo sentimos no fue posible procesar la transaccion"
           print(self._mensaje)
class Retiro_efectivo(Razon):
    def resolver(self, cliente, evento):
        if cliente.limite_extraccion_diario<evento["monto"]:
          self._mensaje="Lo sentimos pero no posee fondos suficientes para realizar esta operacion"
          print(self._mensaje)
        elif evento["saldoEnCuenta"]>evento["monto"]& evento["monto"]>cliente.saldo_descubierto_disponible:
            self._mensaje="Lo sentimos su saldo descubierto no cubre el monto solicitado"
            print(self._mensaje)
        elif evento["monto"]>evento["cupoDiarioRestante"]:
            self._mensaje="Lo sentimos pero ha excedido su cupo diario"
            print(self._mensaje)
class Enviar_transferencia(Razon):
    def resolver(self, cliente, evento):
        if evento["saldoEnCuenta"]<(evento["monto"]+(evento["monto"]*0.01)):
            self._mensaje="Lo sentimos pero no posee fondos suficientes para realizar esta operacion"
            print(self._mensaje)
        elif evento["saldoEnCuenta"]>evento["monto"]& evento["monto"]>cliente.saldo_descubierto_disponible:
            self._mensaje="Lo sentimos su saldo descubierto no cubre el monto solicitado"
            print(self._mensaje)

class Alta_Tarjeta_Credito(Razon):
    def resolver(self, cliente, evento):
        if  not cliente.puede_crear_tarjeta_credito():
            self._mensaje="Lo sentimos pero ud ya ha alcanzado el limite de tarjetas posible"
            print(self._mensaje)
        elif cliente.get_tier()=='Classic'or cliente.get_tier()=='CLASSIC':            
            self._mensaje=f"Lo sentimos la categoria {cliente.get_tier()}, no permite realizar esta operación"
            print(self._mensaje)
class Recibir_transfeerencia(Razon):
    def resolver(self, cliente, evento):
     if cliente.limite_transferencia_recibida<evento["monto"]:
        self._mensaje="Lo sentimos pero esta operación supera su monto diario permitido"
        print(self._mensaje)
