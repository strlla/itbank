# A tener en cuenta:

class Cuenta():
  def __init__ (self,limite_extraccion_diario,limite_transferencia_recibida,monto,costo_transferencia,saldo_descubierto_disponible):
        self.limite_extraccion_diario = limite_extraccion_diario
        self.limite_transferencia_recibida = limite_transferencia_recibida
        self.monto = monto
        self.costo_transferencia = costo_transferencia
        self.saldo_descubierto_disponible = saldo_descubierto_disponibl
       
  def __repr__ (self):
        return f"limite_extraccion_diario: {self.limite_extraccion_diario}\nlimite_transferencia_recibida: {self.limite_transferencia_recibida}\nmonto: {self.monto}\ncosto_transferencia: {self.costo_transferencia}\nsaldo descubierto disponible: {self.saldo_descubierto_disponible}" 
