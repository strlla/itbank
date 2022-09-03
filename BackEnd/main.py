from cgitb import html
from datetime import datetime
from importlib.resources import path
import json
from msilib.schema import Class
import sys

from Clases.generarRazones import crear_razon

from Clases.Cliente import *

def cargar_data(path):
    "  Cargamos el file y generamos cada cliente con su respectiva transaccion"
    with open(path) as file:
        data = json.load(file)
        if data['tipo'] == 'CLASSIC' or data['tipo'] == 'Classic' :
            cliente = Classic(
                data['nombre'], data['apellido'],  data['direccion'],data['numero'], data['dni'])
        elif data['tipo'] == 'GOLD':
            cliente = Gold(
                data['nombre'], data['apellido'], data['direccion'],data['numero'], data['dni'])
        elif data['tipo'] == 'BLACK':
            cliente = Black(data['nombre'], data['apellido'], data['direccion'],data['numero'], data['dni'] )
    return cliente, data['transacciones']


def generarReporte(cliente,transacciones):
    html=f"""
         <!DOCTYPE html>
     <html lang="en">
     <head>
         <meta charset="UTF-8" />
         <meta http-equiv="X-UA-Compatible" content="IE=edge" />
         <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <html lang="en">
        <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Reporte</title>
        </head>
        <body>
          <div id="reporte">
                  <h1>Reporte</h1>
                  <h2>Informacion del cliente:</h2>
                  <div>"""
   
    html+=f"""
     '<p>Nombre:'+ {cliente.nombre}+'</p>'
        '<p>Apellido:'+ {cliente.apellido}+'</p>'
        '<p>Direccion:'+ {cliente._direccion}+'</p>'
        '<p>Numero cliente:'+ {cliente.numeroCliente}+'</p>'
        '<p>DNI:'+ {cliente.dni}+'</p>'"""
  
  
  
    html+=""""
                  </div>
                  <div> 
                  
                  <h2>Transacciones del cliente</h2>
                  """
         
    for transaccion in transacciones:
           html += f"""
           <div>
               <h3>{transaccion['fecha']} {transaccion['tipo']}: {'Aceptada' if transaccion['estado'] == 'ACEPTADA' else 'Rechazada.'}</h3>
               {'<p>Razón: ' + transaccion["razon"] + '</p>' if transaccion['estado'] == 'RECHAZADA' else ''}
           </div>
           """
   
    html +=  """
          </body>
          </html>
         """       
    return html.lstrip('\n')  



def main():
 if __name__ == "__main__":
   data=cargar_data('./data/ejemplo_Black.json')
  
   transacciones = data[1] 
   cliente=data[0]
   

   for transaccion in transacciones:
     transaccion["razon"]=crear_razon(cliente,transaccion)
        
   html=generarReporte(cliente,transacciones)
 with open(f'{cliente.nombre } {cliente.apellido} {datetime.now().date()}''.html', 'w', encoding="utf-8") as f:
        f.write(html)

main() 