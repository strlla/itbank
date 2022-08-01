
CREATE TABLE IF NOT EXISTS prestamo(
loan_id char(50) NOT NULL ,
loan_date DATE NOT NULL,
loan_total INTEGER NOT NULL,
customer_id INTEGER NOT NULL,
PRIMARY  KEY(loan_id),
FOREIGN KEY(customer_id) references cliente (customers_id)
);


