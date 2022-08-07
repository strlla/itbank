
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
insert into empleado(employee_name,employee_surname,employee_hire_date,employee_dni,branch_id)
values
("Aldo","Rico","02-05-2022",18927893,8),
("Malena","Fonzi","03-01-2021",15927893,4),
("Agustina","Ibañez","15-05-2022",18987893,7),
("Ramiro","Menendez","22-12-2021",2187893,12),
("Mauricio","Kanneman","07-09-2020",2787893,17),
("Alba","Liten","15-10-2022",1187893,1),
("Josefina","Juarez","02-06-2021",2157893,2),
("Kenny","Mileidi","12-07-2022",225893,9),
("Jose","Kampfer","14-02-2020",1187893,20),
("Alvaro","Sciarra","17-03-2019",0587893,19);


UPDATE empleado
SET employee_hire_date = SUBSTR(employee_hire_date, 7, 4) || '-' || SUBSTR(employee_hire_date, 4, 2) || '-' || SUBSTR(employee_hire_date, 1, 2)
;