 CREATE TABLE "cliente" (
	"customer_id"	INTEGER NOT NULL,
	"customer_name"	TEXT NOT NULL,
	"customer_surname"	NUMERIC NOT NULL,
	"customer_DNI"	TEXT NOT NULL,
	"dob"	TEXT,
	"branch_id"	INTEGER NOT NULL,
	"tipo_cliente" TEXT 
	PRIMARY KEY("customer_id" AUTOINCREMENT)
);