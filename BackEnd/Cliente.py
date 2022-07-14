class Cliente:
    clientes=[]
    def __init__(self,nombre,apellido,numero,dni):
        self.nombre=nombre
        self.apellido=apellido
        self.numero=numero
        self.dni=dni
              
    def __repr__(self):
        return f"Nombre completo: {self.nombre} {self.apellido}\nNum de cuenta: {self.numero}\nDni: {self.dni} "
    def puede_crear_chequera(self):
        return bool
    def puede_crear_tarjeta(self):
        return bool
    def puede_comprar_dolar(self):
        return bool        
            
class cliente_Classic(Cliente):
    def __init__(self, nombre, apellido, numero, dni,categoria='Classic',tarjeta=bool):
        super().__init__(nombre, apellido, numero, dni)
        self.__categoria=categoria
        self.__tarjeta=tarjeta
    def __repr__(self):
        return f"Nombre completo: {self.nombre} {self.apellido}\nNum de cuenta: {self.numero}\nDni: {self.dni}\n categoria: {self.__categoria}\n tarjeta: {self.__tarjeta}"
        
        def puede_crear_chequera(self):
            return False

        def puede_comprar_dolar(self):
            return False
        
     
    
class cliente_Gold(Cliente):
    def __init__(self, nombre, apellido, numero, dni, categoria):
        super().__init__(nombre, apellido, numero, dni, categoria)
    def puede_comprar_dolar(self):
        return False
    
    def puede_crear_chequera(self):
        return 'No'


class cliente_Black(Cliente):
    def __init__(self, nombre, apellido, numero, dni, categoria):
        super().__init__(nombre, apellido, numero, dni, categoria)

c=cliente_Classic('Tomas','Calabria','00155687','41562142','Black',True)
print(c)

