from Cliente import *

class Razon():
    def __init__(self, cliente, evento):
        self.operacion = evento["tipo"]
        self.tarjetas_actuales = evento["totalTarjetasDeCreditoActualmente"]
        self.chequeras_actuales = evento["totalChequerasActualmente"]
        self.monto = evento["monto"]
        self.cupoDiarioRestante = evento["cupoDiarioRestante"]
        self.saldoEnCuenta = evento["saldoEnCuenta"]
        self.cliente = cliente

        self.motivo = ""

        if self.operacion == "RETIRO_EFECTIVO_CAJERO_AUTOMATICO":
            if self.monto > self.saldoEnCuenta + self.cliente.cuenta.saldo_descubierto_disponible:
                self.motivo =  "Saldo insuficiente"

            elif self.monto > self.cupoDiarioRestante:
                self.motivo = "Cupo diario insuficiente"

        elif self.operacion == "ALTA_TARJETA_CREDITO":
            self.motivo = self.cliente.puede_crear_tarjeta_credito(self.tarjetas_actuales)[0]

    def __str__(self):
        return self.motivo      



class Resolver():
    def __init__(self,datos_tps):
        self.cliente = Cliente(datos_tps["nombre"], datos_tps["apellido"], datos_tps["numero"], datos_tps["dni"], datos_tps["tipo"])
        self.transacciones = datos_tps["transacciones"]

        for t in self.transacciones:
            if t["estado"] == "ACEPTADA":
                print( f"{t['fecha']}: {t['tipo']} - {t['estado']}. Monto: ${t['monto']}\n" )
            else:
                print(f"{t['fecha']}: {t['tipo']} - {t['estado']}. Monto: ${t['monto']}. Motivo del rechazo: {Razon(cliente = self.cliente, evento = t)}\n")    
        
#DATOS DE PRUEBA:
datos = {
	"numero": 100001,
	"nombre": "Nicolas",
	"apellido": "Gaston",
	"dni": "29494777",
	"tipo": "classic",
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
			"fecha": "20/06/2022 16:00:55",
			"numero": 1,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 0,
			"totalChequerasActualmente" : 0
		},
		{
			"estado": "RECHAZADA",
			"tipo": "RETIRO_EFECTIVO_CAJERO_AUTOMATICO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 9000,
			"monto": 11000,
			"fecha": "20/06/2022 17:00:55",
			"numero": 2,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 0,
			"totalChequerasActualmente" : 0
		},
		{
			"estado": "RECHAZADA",
			"tipo": "RETIRO_EFECTIVO_CAJERO_AUTOMATICO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 10000,
			"monto": 9000,
			"fecha": "20/06/2022 18:00:55",
			"numero": 3,
			"saldoEnCuenta": 5000,
			"totalTarjetasDeCreditoActualmente" : 0,
			"totalChequerasActualmente" : 0
		},
        {
			"estado": "RECHAZADA",
			"tipo": "ALTA_TARJETA_CREDITO",
			"cuentaNumero": 190,
			"cupoDiarioRestante": 3000,
			"monto": 9000,
			"fecha": "22/06/2022 16:00:55",
			"numero": 5,
			"saldoEnCuenta": 100000,
			"totalTarjetasDeCreditoActualmente" : 5,
			"totalChequerasActualmente" : 0
		}
	]
}

Resolver(datos)        