CREATE VIEW Vista_customers as
SELECT customer_DNI ,branch_id ,customer_name 
(CASE WHEN dob is NOT NULL THEN cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob ) as int) END)as edad
FROM cliente;

SELECT *
FROM Vista_customers
WHERE nombre = 'Anne' or nombre = 'Tyler'
ORDER by edad ASC;
            
SELECT vista.customer_id,vista.num_sucursal,vista.nombre,vista.apellido,vista.edad, cliente.customer_DNI
		FROM Vista_customers as vista
		INNER JOIN cliente on vista.customer_id = cliente.customer_id
		WHERE edad > 40
		ORDER by customer_DNI ASC;

INSERT INTO cliente(customer_name,customer_surname,customer_DNI,branch_id,dob)
VALUES	('Lois','Stout','47730534',80,'1984-07-07'),
		('Hall','Mcconnell','52055464',45,'1968-04-30'),
		('Hilel','Mclean','43625213',77,'1993-03-28'),
		('Jin','Cooley','21207908',96,'1959-08-24'),
		('Gabriel','Harmon','57063950',27,'1976-04-01');

UPDATE cliente
SET branch_id = 10
WHERE customer_DNI = '47730534' or customer_DNI = '52055464' or customer_DNI = '43625213'
or customer_DNI = '21207908' or customer_DNI = '57063950';

DELETE FROM cliente
WHERE customer_name = 'Noel' AND customer_surname = 'David';

SELECT loan_type, max(loan_total) as valor_prestamo
FROM prestamo;
