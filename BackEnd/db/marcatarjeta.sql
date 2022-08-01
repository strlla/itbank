CREATE TABLE IF NOT EXISTS marca_tarjeta(
marca_tarjeta_id INTEGER PRIMARY KEY AUTOINCREMENT,
debito BOOLEAN,
credito BOOLEAN
);

insert into marca_tarjeta(debito,credito)
