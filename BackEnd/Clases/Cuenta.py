

class Cuenta():
  def __init__ (self,limite_extraccion_diario,limite_transferencia_recibida,costo_transferencia,saldo_descubierto_disponible,tipo):
      self.tipo=tipo
      self.monto=0
      self.limite_extraccion_diario = limite_extraccion_diario
      self.limite_transferencia_recibida = limite_transferencia_recibida
      self.costo_transferencia = costo_transferencia
      self.saldo_descubierto_disponible = saldo_descubierto_disponible
      self.cupo_diario_restante=0

  def setear_monto(self,x):
         self.monto==x
  def get_limite_extraccion_diario(self):
       return self.limite_extraccion_diario
  def get_limite_transferencia_recibida(self):
       return self.limite_transferencia_recibida
  def get_cupo_diario(self):
       return self.cupo_diario_restante
  def get_monto(self):
       return self.__monto
  def setear_monto(self, x):
        self.__monto = x
        return self.__monto
  def get_costo_transferencias(self):
        return self.costo_transferencia
  def get_saldo_descubierto(self):
        return self.saldo_descubierto_disponible
  def __repr__ (self):
      return f"Tipo de Cuenta:{self.tipo}\n monto:{self.monto} limite_extraccion_diario: {self.limite_extraccion_diario}\nlimite_transferencia_recibida: {self.limite_transferencia_recibida}\ncosto_transferencia: {self.costo_transferencia}\nsaldo descubierto disponible: {self.saldo_descubierto_disponible}" 

class Caja_ahorro_pesos(Cuenta):
      def __init__(self, limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible):
           super().__init__(limite_extraccion_diario,limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible,"Caja_Ahorro_Pesos")
class Caja_ahorro_dolares(Cuenta):
            def __init__(self, limite_extraccion_diario,limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible):
                  super().__init__(limite_extraccion_diario,limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible,"Caja_Ahorro_Dolares")      
class Cuenta_corriente(Cuenta):
      def __init__(self, limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible):
           super().__init__(limite_extraccion_diario,limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible,"Cuenta_Corriente")
