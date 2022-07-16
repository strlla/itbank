
class Tarjeta():
    def __init__(self, numeroTarjeta, nombrePropietario, fecha_vencimiento, cvc):
        self.numeroTarjeta = numeroTarjeta
        self.nombrePropietario = nombrePropietario
        self.fecha_vencimiento = fecha_vencimiento
        self.cvc = cvc

    def __str__(self):
        return "Tarjeta: " + self.numeroTarjeta + " " + self.nombrePropietario + " " + self.fecha_vencimiento + " " + self.cvc

class Chequera():
    def __init__(self,numeroChquera,cuenta_origen, monto, destino,fecha ):
        self.numeroChequera = numeroChquera
        self.cuenta_origen = cuenta_origen
        self.monto = monto
        self.destino = destino
        self.fecha = fecha
    
    def __str__(self):
        return "Chequera: " + self.numeroChequera + " " + self.cuenta_origen + " " + self.monto + " " + self.destino + " " + self.fecha

