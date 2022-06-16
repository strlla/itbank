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
  .then((response) => response.json())
  .then((responseJSON) => {
    datos.push(...responseJSON);
    datos.find((dato) => {
      if (dato.casa.nombre === "Dolar Blue") {
        console.log(
          `Moneda: Dolar Blue / Precio de Venta: ${dato.casa.venta} / Precio de Compra: ${dato.casa.compra}`
        );
      }
    });
    generarCotizaciones();
  })
  .catch((err) => console.log(err));
