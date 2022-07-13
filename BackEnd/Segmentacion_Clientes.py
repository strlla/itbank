class Cuenta ():
    cuentas = []
def __int__ (self,limite_extraccion_diario,limite_transferencia_recibida,monto,costo_transferencia,saldo_descubierto_disponible):
    self.limite_extraccion_diario = limite_extraccion_diario
    self.limite_trasnferencia_recibida = limite_transferencia_recibida
    self.monto = monto
    self.costo_transfernecia = costo_transferencia
    self.saldo_descubierto_disponible = saldo_descubierto_disponible
def __repr__ (self):
    return f"limite_extraccion_diario: {self.limite_extraccion_diario},limite_transferencia_recibida: {self.limite_transferencia_recibida},monto: {self.monto},costo_transferencia: {self.costo_transferencia},limite_transferencia_recibida: {self.limite_transferencia_recibida}" 
