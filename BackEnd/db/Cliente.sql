CREATE TABLE IF NOT EXISTS cliente(
	customer_id INTEGER NOT NULL  ,
	customer_name	TEXT NOT NULL,
	 customer_surname  INTEGER NOT NULL,
	 customer_DNI  TEXT UNIQUE NOT NULL,
	 dob  TEXT NOT NULL,
	 branch_id 	INTEGER NOT NULL ,
	 tipo_cliente  TEXT NOT NULL,
	 PRIMARY KEY(customer_id),
	 FOREIGN KEY(branch_id) references sucursal(branch_id)

);

