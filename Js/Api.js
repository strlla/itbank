let cotizacionesContainer = document.querySelector(".innerCotizaciones");
let actualizacion = document.querySelector("#actualizacion");

const generarCotizaciones = () => {
  const datos = [] //El array datos se 'limpia' cada vez que se actualizan los TC

  //Se extraen los datos de la API
  fetch('https://www.dolarsi.com/api/api.php?type=valoresprincipales')
  .then((res) => res.json())
  .then((res) => {
    datos.push(...res); //Agregamos el JSON al array datos
    armarCards(res); //Llamamos a la funcion que arma las tarjetas
  })
  .catch((err) => console.log(err));
}

//Creamos una funcion para filtrar las cotizaciones de interes
function verificador(dato){
  return (dato.casa.nombre.includes('Dolar ') && dato.casa.nombre != 'Dolar Soja')
}

//Creamos la funcion que arma las tarjetas
function armarCards(datos){   
  
  //Primero filtra las cotizaciones 
  let datosFiltrados = datos.filter(x => verificador(x) == true)
  
  //Creamos una card para cada cotizacion
  cotizacionesContainer.innerHTML = datosFiltrados.map((dato) => 
    `<div class="cotizacion card">
    
    <h4 class="titleCotizacion">${dato.casa.nombre}</h4>
    </br>
    <p class="cotizacionVenta">Precio Compra: $${dato.casa.compra}</p>
    <p class="cotizacionCompra">Precio Venta: $${dato.casa.venta}</p>
    <br>
    <p class="variacion">Variación: ${dato.casa.variacion}%</p>
    </div>
    `
    )
    .join("");

  //Mostramos la última actualización  
  actualizacion.innerHTML = `Última actualización: ${new Date().toLocaleDateString('es-us', { year:"numeric", month:"numeric", day:"numeric", hour: "2-digit",minute:"2-digit"}) }`
};


generarCotizaciones()
  
//Agregamos un setInterval para que se actualice cada 5 minutos
setInterval( () => generarCotizaciones(), 300000)

