from Cliente import *
from Direcciones import *
class Razon():
    #Devuelve una respuesta por cada tipo de error que puede llevar a un rechazo de la transacción

	def __init__(self, cliente, evento):
		self.operacion = evento["tipo"]
		self.tarjetas_actuales = evento["totalTarjetasDeCreditoActualmente"]
		self.chequeras_actuales = evento["totalChequerasActualmente"]
		self.monto = evento["monto"]
		self.cupoDiarioRestante = evento["cupoDiarioRestante"]
		self.saldoEnCuenta = evento["saldoEnCuenta"]
		self.cliente = cliente

		self.motivo = ""

		#Diferenciamos por cada tipo de transacción devuelta por el TPS y evaluamos los posibles errores
		if self.operacion == "RETIRO_EFECTIVO_CAJERO_AUTOMATICO":
			if self.monto > self.saldoEnCuenta:
				self.motivo =  "Saldo insuficiente"

			elif self.monto > self.cupoDiarioRestante:
				self.motivo = "Cupo diario insuficiente"

		elif self.operacion == "ALTA_TARJETA_CREDITO":
				self.motivo = self.cliente.puede_crear_tarjeta_credito(self.tarjetas_actuales)[0]
				
		elif self.operacion == "ALTA_CHEQUERA":
				self.motivo = self.cliente.puede_crear_chequera(self.chequeras_actuales)[0]
		
		elif self.operacion == "COMPRA_DOLAR":
			if self.cliente.__tier__ == "Classic":
				self.motivo = self.cliente.puede_comprar_dolar()[0]
			elif self.monto > self.saldoEnCuenta:
				self.motivo = "Saldo insuficiente"

		elif self.operacion == "TRANSFERENCIA_ENVIADA":
			if self.monto*(1+self.cliente.cuenta.costo_transferencia) > self.saldoEnCuenta:
					self.motivo =  "Saldo insuficiente"

		elif self.operacion == "TRANSFERENCIA_RECIBIDA":
			if self.monto > self.cliente.cuenta.limite_transferencia_recibida:
					self.motivo =  f"Debe solicitar autorización antes de recibir transferencias mayores a {self.cliente.cuenta.limite_transferencia_recibida}"  

	def __str__(self):
			return self.motivo      



class Resolver():
    #Haciendo uso de la funcion Razones recorre un array de transacciones y devuelve un detalle

	def __init__(self,datos_tps):
			self.cliente = Cliente(datos_tps["nombre"], datos_tps["apellido"], datos_tps["numero"], datos_tps["dni"], datos_tps["tipo"])
			self.transacciones = datos_tps["transacciones"]
			self.direccion = Direccion(calle=datos_tps["direccion"]["calle"], numeroCalle = datos_tps["direccion"]["numero"],ciudad=datos_tps["direccion"]["ciudad"], estado =datos_tps["direccion"]["provincia"])	

			print(f"\nCliente:\n{self.cliente}\nDireccion: {self.direccion}\n\nTransacciones:")

			for t in self.transacciones:
					if t["estado"] == "ACEPTADA":
							print( f"{t['fecha']}: {t['tipo']} - {t['estado']}. Monto: ${t['monto']}\n" )
					else:
							print(f"{t['fecha']}: {t['tipo']} - {t['estado']}. Monto: ${t['monto']}. Motivo del rechazo: {Razon(cliente = self.cliente, evento = t)}\n")    
	
        
#DATOS DE PRUEBA:
datos ={
	"numero": 100001,
	"nombre": "Nicolas",
	"apellido": "Gaston",
	"dni": "29494777",
	"tipo": "BLACK",
	"direccion" : {
		"calle" : "Rivadavia",
		"numero" : "7900",
		"ciudad": "Capital Federal",
		"provincia" : "Buenos Aires",
		"pais": "Argentina"
	},
	"transacciones": [{
			"estado": "ACEPTADA",
			"tipo": "RETIRO_EFECTIVO_CAJERO_AUTOMATICO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 9000,
			"cantidadExtraccionesHechas": 1,
			"monto": 1000,
			"fecha": "06/06/2022 10:00:55",
			"numero": 1,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA", 
			"tipo": "RETIRO_EFECTIVO_CAJERO_AUTOMATICO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 10000,
			"monto": 11000,
			"fecha": "06/06/2022 10:10:55",
			"numero": 2,
			"saldoEnCuenta": 10000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA",
			"tipo": "RETIRO_EFECTIVO_CAJERO_AUTOMATICO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "06/06/2022 10:22:55",
			"numero": 3,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA",
			"tipo": "RETIRO_EFECTIVO_CAJERO_AUTOMATICO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "06/06/2022 10:33:33",
			"numero": 4,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA",
			"tipo": "ALTA_TARJETA_CREDITO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "06/06/2022 12:00:00",
			"numero": 5,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA",
			"tipo": "ALTA_CHEQUERA",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "06/06/2022 12:30:55",
			"numero": 6,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA",
			"tipo": "COMPRA_DOLAR",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "06/06/2022 12:45:33",
			"numero": 7,
			"saldoEnCuenta": 5000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "RECHAZADA",
			"tipo": "TRANSFERENCIA_ENVIADA",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 1000000,
			"fecha": "06/06/2022 13:00:55",
			"numero": 8,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "ACEPTADA",
			"tipo": "TRANSFERENCIA_RECIBIDA",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "06/06/2022 13:11:15",
			"numero": 9,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		},
		{
			"estado": "ACEPTADA",
			"tipo": "TRANSFERENCIA_RECIBIDA",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 200000,
			"fecha": "06/06/2022 16:00:55",
			"numero": 10,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 2
		}


	]
}

Resolver(datos)        