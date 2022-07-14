 
class Direccion():
    def __init__(self, calle, numero, ciudad, estado, cp):
        self.calle = calle
        self.numero = numero
        self.ciudad = ciudad
        self.estado = estado
        self.cp = cp

    def __str__(self):
        return f"{self.calle} {self.numero} {self.ciudad} {self.estado} {self.cp}"


