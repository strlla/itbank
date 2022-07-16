 
class Direccion():
    def __init__(self, calle, numeroCalle, ciudad, estado, cp):
        self.calle = calle
        self.numeroCalle = numeroCalle
        self.ciudad = ciudad
        self.estado = estado
        self.cp = cp

    def __repr__(self):
        return f"{self.calle} {self.numero} {self.ciudad} {self.estado} {self.cp}"


