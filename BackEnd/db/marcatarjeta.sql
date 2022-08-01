CREATE TABLE IF NOT EXISTS marca_tarjeta(
marca_tarjeta_id PRIMARY KEY INTEGER AUTOINCREMENT,
debito BOOLEAN,
credito BOOLEAN,
);

INSERT INTO marca_tarjeta(debito,credito)
VALUES (true,false);
INSERT INTO marca_tarjeta(debito,credito)
VALUES (false,true);
INSERT INTO marca_tarjeta(debito,credito)
VALUES (true,false);

SELECT*from marca_tarjeta;