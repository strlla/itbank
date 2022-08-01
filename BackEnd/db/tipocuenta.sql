CREATE TABLE IF NOT EXISTS tipo_de_cuenta(
tipo_cuenta_id INTEGER PRIMARY KEY AUTOINCREMENT, 
caja_ahorro_pesos BOOLEAN NOT NULL,
caja_ahorro_dolares BOOLEAN NOT NULL,
cuenta_corriente BOOLEAN NOT NULL
);

