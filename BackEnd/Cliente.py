# Extras:
# - No se puede crear un cliente sin nombre
# - No se puede crear un cliente sin dirección
# - No se puede crear un cliente sin teléfono


clientes=[]
class Cliente:
    def __init__(self,nombre,apellido,numero,dni):
        self.nombre=nombre
        self.apellido=apellido
        self.numero=numero
        self.dni=dni
        if self.nombre=="" or self.apellido=="" or self.numero=="" or self.dni=="" :
            raise ValueError("Hay algun campo vacio")
        
    def __repr__(self):
        return f"Nombre completo: {self.nombre} {self.apellido}\nNum de cuenta: {self.numero}\nDni: {self.dni} "
    def puede_crear_chequera(self):
        return bool
    def puede_crear_tarjeta(self):
        return bool
    def puede_comprar_dolar(self):
        return bool        
             
class cliente_Classic(Cliente):
    def __init__(self, nombre, apellido, numero, dni):
        super().__init__(nombre, apellido, numero, dni)
        self.__categoria="Classic"
        clientes.append(self)
    def __repr__(self):
        return f"Nombre completo: {self.nombre} {self.apellido}\nNum de cuenta: {self.numero}\nDni: {self.dni}\nCategoria: {self.__categoria}"
    def puede_crear_chequera(self):
        return False
    def puede_crear_tarjeta(self):
        return False
    def puede_comprar_dolar(self):
        return False
 
    
class cliente_Gold(Cliente):
    def __init__(self, nombre, apellido, numero, dni):
        super().__init__(nombre, apellido, numero, dni)
        self.__categoria="Gold"
        clientes.append(self)
         
    def __repr__(self):
        return f"Nombre completo: {self.nombre} {self.apellido}\nNum de cuenta: {self.numero}\nDni: {self.dni}\nCategoria: {self.__categoria}"
    def puede_crear_chequera(self):
        return True
        

class cliente_Black(Cliente):
   def __init__(self, nombre, apellido, numero, dni):
       super().__init__(nombre, apellido, numero, dni)
       self.__categoria="Black"
       clientes.append(self)
       
   def __repr__(self):
            return f"Nombre completo: {self.nombre} {self.apellido}\nNum de cuenta: {self.numero}\nDni: {self.dni}\nCategoria: {self.__categoria}"
   def puede_comprar_dolar(self):
        return True
   def puede_crear_chequera(self):
        return True
   def puede_crear_tarjeta(self):
        return True

a=cliente_Classic("","Perez","123456789","12345678")
b=cliente_Gold("","Perez","123456789","12345678")
c=cliente_Black("Mati","Perez","123456789","12345678")