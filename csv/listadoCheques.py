'''

2. El orden de los argumentos son los siguientes:  
  a. Nombre del archivo csv. 
  b. DNI del cliente donde se filtraran. 
  c. Salida: PANTALLA o CSV 
  d. Tipo de cheque: EMITIDO o DEPOSITADO 
  e. Estado del cheque: PENDIENTE, APROBADO, RECHAZADO. (Opcional) 
  f. Rango fecha: xx-xx-xxxx:yy-yy-yyyy (Opcional) 

3. Si para un DNI dado un número de cheque de una misma 
cuenta se repite se debe mostrar el error por pantalla, 
indicando que ese es el problema. 

4. Si el parámetro “Salida” es PANTALLA se deberá imprimir
por pantalla todos los valores que se tienen, y si 
“Salida” es CSV se deberá exportar a un csv con las 
siguientes condiciones: 
  a. El nombre de archivo tiene que tener el formato <DNI><TIMESTAMPS ACTUAL>.csv 
  b. Se tiene que exportar las dos fechas, el valor del cheque y la cuenta. 

5. Si el estado del cheque no se pasa, se deberán imprimir 
los cheques sin filtrar por estado

'''
import csv

with open('Clientes.csv') as f:
  reader = csv.reader(f, delimiter="|")
  for row in reader:
    print("DNI: {8}, Tipo: {10}, Estado: {9}, FechaOrigen: {6}, FechaPago: {7}".format(row[8],row[10],row[9],row[6],row[7]))

# Modificar lo anterior