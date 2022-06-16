const datos = [];

const generarCotizaciones = () => {
  let cotizacionesContainer = document.querySelector(".innerCotizaciones");
  cotizacionesContainer.innerHTML = datos
    .map(
      (dato) => `
    <div class="cotizacion card">
    
    <h4 class="titleCotizacion">Moneda: ${dato.casa.nombre}</h4>
    </br>
    <p class="cotizacionVenta">Precio Venta: ${dato.casa.venta}</p>
    <p class="cotizacionCompra">Precio Compra: ${dato.casa.venta}</p>
    </div>`
    )
    .join("");
};

fetch("https://www.dolarsi.com/api/api.php?type=valoresprincipales")
  .then((res) => res.json())
  .then((res) => {
    datos.push(...res);
 
    generarCotizaciones();
  })
  .catch((err) => console.log(err));
