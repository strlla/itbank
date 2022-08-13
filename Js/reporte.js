function generarTransacciones(transacciones) {
  let divTransacciones = "";
  transacciones.forEach((tr, index) => {
    divTransacciones += `<div class="transaccion">
                <h3>${index + 1}.Transaccion</h3>
                <p>Estado: ${tr.estado}</p>
                <p>Tipo: ${tr.tipo}</p>

                <p>Fecha: ${tr.fecha}</p>
                <p>Monto: $${tr.monto}</p>
         </div>`;
  });

  return divTransacciones;
}

function generarReporte() {
  fetch("./BackEnd/data/ejemplo.json")
    .then((res) => res.json())
    .then((data) => {
      if (data) {
        const reporteContainer = document.getElementById("reporte");
        reporteContainer.innerHTML = `<div>
                                <div class="reporte-info-cliente">
                                        <p>Cliente: ${data.nombre} ${
          data.apellido
        }  |   Nro: ${data.numero}</p>
                                        <p>DNI: ${data.DNI}</p>
                                        <p>Tipo de cliente: ${data.tipo}</p>
                                </div>
                                <div id="reporte-transacciones">
                                        <h2>Transacciones</h2>
                                        ${generarTransacciones(
                                          data.transacciones
                                        )}
                                </div>
                        </div>`;
      }
      console.log(data);
    })
    .catch((e) => console.log(e));
  procesarJson();
}

generarReporte();
