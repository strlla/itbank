



class Razon():
    # Devuelve una respuesta por cada tipo de error que puede llevar a un rechazo de la transacción
    def __init__(self):
     self._mensaje=""
    def getMensaje(self):
        print(self._mensaje)
        return self._mensaje

    def resolver(self,cliente,evento):
        pass
    
  

class Alta_chequera(Razon):
    def resolver(self, cliente, evento):
     if  evento['totalChequerasActualmente']>=cliente.limite_chequeras:
        self._mensaje =f"Lo sentimos ud ha superado el limite de chequeras posibles"
         
     if cliente.get_tier()=='Classic' or cliente.get_tier()=='CLASSIC':
            self._mensaje=f"Lo sentimos la categoria {cliente.get_tier()}, no permite realizar esta operación"
             

class Compra_dolar(Razon):
    def resolver(self, cliente, evento):
        if not cliente.puede_comprar_dolares():
            self._mensaje="Lo sentimos pero ud. no se encuentra habilitdao para esta operación"
       
        elif evento["monto"]>cliente._cuenta_en_dolares:
            self._mensaje="Ud. ha superado el monto de transferencia a recibir"
            
        else:
           self._mensaje="Lo sentimos no fue posible procesar la transaccion"
           
class Retiro_efectivo(Razon):
    def resolver(self, cliente, evento):
        
        if cliente.get_limite_extraccion_diario('Caja_Ahorro_Pesos')<evento["monto"]:
          self._mensaje="Lo sentimos pero no posee fondos suficientes para realizar esta operacion"
      
        elif evento["saldoEnCuenta"]>evento["monto"]& evento["monto"]>cliente.get_saldo_descubierto_disponible('Cuenta_Corriente'):
            self._mensaje="Lo sentimos su saldo descubierto no cubre el monto solicitado"
            
        elif evento["monto"]>evento["cupoDiarioRestante"]:
            self._mensaje="Lo sentimos pero ha excedido su cupo diario"
             
class Enviar_transferencia(Razon):
    def resolver(self, cliente, evento):
        if evento["saldoEnCuenta"]<(evento["monto"]+(evento["monto"]*0.01)):
            self._mensaje="Lo sentimos pero no posee fondos suficientes para realizar esta operacion"
            
        elif evento["saldoEnCuenta"]>evento["monto"]& evento["monto"]>cliente.get_saldo_descubierto_disponible('Cuenta_Corriente'):
            self._mensaje="Lo sentimos su saldo descubierto no cubre el monto solicitado"
           

class Alta_Tarjeta_Credito(Razon):
    def resolver(self, cliente, evento):
        if  cliente.limite_tarjetasCredito>=evento["totalTarjetasDeCreditoActualmente"]:
            self._mensaje="Lo sentimos pero ud ya ha alcanzado el limite de tarjetas posible"
            
        elif cliente.get_tier()=='Classic'or cliente.get_tier()=='CLASSIC':            
            self._mensaje=f"Lo sentimos la categoria {cliente.get_tier()}, no permite realizar esta operación"
            
class Recibir_transfeerencia(Razon):
    def resolver(self, cliente, evento):
     if cliente.get_transferencia_recibida('Caja_Ahorro_Pesos')<evento["monto"]:
        self._mensaje="Lo sentimos pero esta operación supera su monto diario permitido"
        
