

class Cuenta():
  def __init__ (self,limite_extraccion_diario,limite_transferencia_recibida,costo_transferencia,saldo_descubierto_disponible):
        self.limite_extraccion_diario = limite_extraccion_diario
        self.limite_transferencia_recibida = limite_transferencia_recibida
        self.costo_transferencia = costo_transferencia
        self.saldo_descubierto_disponible = saldo_descubierto_disponible

  def __repr__ (self):
        return f"limite_extraccion_diario: {self.limite_extraccion_diario}\nlimite_transferencia_recibida: {self.limite_transferencia_recibida}\ncosto_transferencia: {self.costo_transferencia}\nsaldo descubierto disponible: {self.saldo_descubierto_disponible}" 

class Caja_ahorro_pesos(Cuenta):
      def __init__(self, limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible):
           super().__init__(limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible)

class Caja_ahorro_dolares(Cuenta):
      def __init__(self, limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible):
           super().__init__(limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible)
      
class Cuenta_corriente(Cuenta):
      def __init__(self, limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible):
           super().__init__(limite_extraccion_diario, limite_transferencia_recibida, costo_transferencia, saldo_descubierto_disponible)
