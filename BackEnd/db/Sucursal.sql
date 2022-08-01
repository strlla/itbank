CREATE TABLE IF NOT EXISTS sucursal(
branch_id INTEGER NOT NULL,
branch_name char(50) NOT NULL,
branch_adress varchar(255) NOT NULL,
FOREIGN KEY (branch_adress) references direcciones (branch_adress)  
);