CREATE TABLE IF NOT EXISTS empleado(
employee_id INTEGER NOT NULL,
employee_name char(50) NOT NULL,
employee_surname char(50) NOT NULL,
employee_hire_date DATE NOT NULL,
employee_dni char(10) NOT NULL,
branch_id INTEGER NOT NULL,
PRIMARY KEY(employee_id)
FOREIGN KEY(branch_id) REFERENCES sucursal(branch_id)
);