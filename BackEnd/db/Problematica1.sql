
--Los datos generados se encuentran en cada uno de sus respectivos archivos sql


-- Sucursal de cada usuario 
SELECT * from cliente 
inner JOIN sucursal on sucursal.branch_id=cliente.branch_id;

-- Empleado y direccion asignada a cada cliente

SELECT * from cliente
inner join empleado 
where empleado.branch_id=cliente.branch_id;
-- Convertir la Fecha de ingreso de cada empleado
UPDATE empleado
SET employee_hire_date = SUBSTR(employee_hire_date, 7, 4) || '-' || SUBSTR(employee_hire_date, 4, 2) || '-' || SUBSTR(employee_hire_date, 1, 2)
;


-- Renombrar columna y  Calcular edad (No tenemos forma de obtener la fecha del sistema desde vs code)

alter table cliente add COLUMN customer_age;
UPDATE cliente 
set customer_age=    "2022/08/05"-cliente.dob
where cliente.customer_id=cliente.customer_id;


