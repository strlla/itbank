
CREATE TABLE IF NOT EXISTS cliente(
	customer_id INTEGER NOT NULL  ,
	customer_name CHAR(50)  NOT NULL,
	 customer_surname  CHAR(50)  NOT NULL,
	 customer_DNI  CHAR(10) NOT NULL,
	 branch_id 	INTEGER NOT NULL ,
	 dob DATE NOT NULL,
	 tipo_cliente  TEXT NOT NULL,
	 PRIMARY KEY(customer_id),
	 FOREIGN KEY(branch_id) references sucursal(branch_id)

