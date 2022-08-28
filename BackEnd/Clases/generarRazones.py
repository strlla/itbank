from Clases.Razones import *


TIPO_TRANSACCION = {'RETIRO_EFECTIVO_CAJERO_AUTOMATICO': 0, 'ALTA_TARJETA_CREDITO': 1,
                    'ALTA_CHEQUERA': 2, 'COMPRA_DOLAR': 3, 'TRANSFERENCIA_ENVIADA': 4, 'TRANSFERENCIA_RECIBIDA': 5}

def crear_razon(cliente, transaccion):
    """
    Esta funcion --> Recibe un Cliente y una trasacción.
    En caso de que la transacción haya sido rechazada, crea y devuelve un objeto razón que almacena el porqué. En caso contrario, devuelve None. 
    """
    if transaccion['estado'] == 'ACEPTADA':
        return None
    else:
     match TIPO_TRANSACCION[transaccion['tipo']]:
        case 0:
            razon = Retiro_efectivo()
        case 1:
            razon = Alta_Tarjeta_Credito()
        case 2:
            razon = Alta_chequera()
        case 3:
            razon = Compra_dolar()
        case 4:
            razon = Enviar_transferencia()
        case 5:
            razon = Recibir_transfeerencia()
    
    Razon().resolver(cliente, transaccion)
    print( razon)


