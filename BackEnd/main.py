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
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
 
                <title>Reporte</title>
        </head>
        <body style="width:80%;justify-content: center; display: grid;">
        
          <div id="reporte">
                  <h1>Reporte</h1>
                  <h2>Informacion del cliente:</h2>
                  """
   
    html+=f"""
     <table  >
    <thead>
      <tr  >
        <th  >Nombre</th>
        <th  >Apellido</th>
        <th  >DNI</th>
        <th  >Numero de Cliente</th>
        <th  >Segmento</th>
        
      </tr>
    </thead>
    <tbody>
      <tr  >
        <td  >{cliente.nombre} </td>
        <td  > {cliente.apellido}</td>
        <td  >{cliente.dni} </td>
        <td  >{cliente.numeroCliente}</td>
        <td  >{cliente.__tier__}</td>
      </tr>

    </tbody>
  </table>
          <table  >
    <thead>
      <tr  >
        <th  >Calle</th>
        <th  >Numero</th>
        <th  >Ciudad</th>
        <th  >Provincia</th>
        <th  >Pais</th>
        
      </tr>
    </thead>
    <tbody>
      <tr  >
        <td  >{cliente._direccion.calle} </td>
        <td  > {cliente._direccion.numero}</td>
        <td  >{cliente._direccion.ciudad} </td>
        <td  >{cliente._direccion.provincia}</td>
        <td  >{cliente._direccion.pais}</td>
      </tr>

    </tbody>
  </table>
       """
  
  
  
    html+="""
  
    
                  <h2>Transacciones del cliente</h2>
       
         
          <table  >
    <thead>
      <tr  >
        <th  >Fecha</th>
        <th  >Tipo</th>
        <th  >Estado</th>
        <th  > Razon</th>
    
        
      </tr>
      
    </thead>
    <tbody>
               """
         
    for transaccion in transacciones:
           html += f"""

      <tr  >
        <td style="margin-left:20px;" >{transaccion['fecha']} </td>
        <td style="margin-left:20px;" > {transaccion['tipo']}</td>
        <td style="margin-right:20px;font-weight:bold;" >{'Aceptada' if transaccion['estado'] == 'ACEPTADA' else 'Rechazada.'} </td>
        <td  style="margin-left:20px ;">  -   {transaccion["razon"]}</td>

      </tr>
"""

    html+="""
    </tbody>
  </table>




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
   print(cliente._direccion.calle)

   for transaccion in transacciones:
     transaccion["razon"]=crear_razon(cliente,transaccion)
        
   html=generarReporte(cliente,transacciones)
 with open(f'{cliente.nombre } {cliente.apellido} {datetime.now().date()}''.html', 'w', encoding="utf-8") as f:
        f.write(html)

main() 