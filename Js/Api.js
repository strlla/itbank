const datos=[]
fetch('https://www.dolarsi.com/api/api.php?type=valoresprincipales',{
    method: 'GET',

}).catch(err=>console.log(err))

.then((response) => response.json())
    .then((responseJSON) => {
        datos.push(...responseJSON)
   
        datos.find(dato=>{
            if(dato.casa.nombre==='Dolar Blue'){
                console.log(`Moneda: Dolar Blue
----------------------
Precio de Venta: ${dato.casa.venta} 
-----------------------
Precio de Compra: ${dato.casa.compra}`)
            }
    
    })
        
})