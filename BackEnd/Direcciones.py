 
class Direccion():
    def __init__(self, calle, numeroCalle, ciudad, estado):
        self.calle = calle
        self.numeroCalle = numeroCalle
        self.ciudad = ciudad
        self.estado = estado

    def __repr__(self):
        return f"{self.calle} {self.numeroCalle}, {self.ciudad}, {self.estado}"


