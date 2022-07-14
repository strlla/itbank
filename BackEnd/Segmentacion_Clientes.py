import imp
from Cliente import Cliente
from Cliente import cliente_Classic, cliente_Gold, cliente_Black
from Cliente_Direccion import Direccion

#Prueba importacion de Modulos 

a=cliente_Classic("Ana","Perez","123456789","12345678")
a.direccion=Direccion("Calle","123","Ciudad","Estado","12345")
print(a.direccion)