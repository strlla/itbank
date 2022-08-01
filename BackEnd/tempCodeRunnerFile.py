			if self.monto > self.saldoEnCuenta + self.cliente.cuenta.saldo_descubierto_disponible:
					self.motivo =  "Saldo insuficiente"

			elif self.monto > self.cupoDiarioRestante:
					self.motivo = "Cupo diario insuficiente"