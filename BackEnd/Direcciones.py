 
class Direccion():
    def __init__(self, calle, numero, ciudad, provincia,pais):
        self.calle = calle
        self.numero = numero
        self.ciudad = ciudad
        self.provincia= provincia
        self.pais=pais

    def __repr__(self):
        return f"{self.calle} {self.numero}, {self.ciudad}, {self.provincia}, {self.pais}"


