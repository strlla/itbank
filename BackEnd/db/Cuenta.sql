

CREATE TABLE IF NOT EXISTS cuenta(
account_id INTEGER PRIMARY KEY NOT NULL,
customer_id INTEGER NOT NULL ,
balance INTEGER NOT NULL,
    check (balance>=0)
FOREIGN KEY(customers_id) references cliente(customer_id)
);

