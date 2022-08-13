
-- Sucursal de cada usuario 
SELECT * from cliente 
inner JOIN sucursal on sucursal.branch_id=cliente.branch_id;


-- Convertir la Fecha de ingreso de cada empleado
UPDATE empleado
SET employee_hire_date = SUBSTR(employee_hire_date, 7, 4) || '-' || SUBSTR(employee_hire_date, 4, 2) || '-' || SUBSTR(employee_hire_date, 1, 2)
;

-- Renombrar columna y  Calcular edad (No tenemos forma de obtener la fecha del sistema desde vs code)

-- alter table cliente add COLUMN customer_age;
-- UPDATE cliente 
-- set customer_age=    "2022/08/05"-cliente.dob
-- where cliente.customer_id=cliente.customer_id;



-- Vista de los customers  MENORES DE 40 por DNI de menor a mayor

CREATE VIEW Vista_customers as
SELECT customer_DNI ,branch_id ,customer_name ,g customer_age 
FROM cliente 
WHERE customer_age<40 
ORDER BY cliente.customer_age ASC;  

-- Vista de los customers  tyler y anne por edad de mayor a menor


CREATE VIEW view_clienteName as 
SELECT branch_id ,customer_name,customer_age 
FROM cliente 
WHERE  cliente.customer_name="Anne" or cliente.customer_name="Tyler" 
ORDER BY cliente.customer_age DESC;  
