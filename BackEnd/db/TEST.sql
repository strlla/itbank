-- La idea aca va a ser igualar los nombres de los dueños de las tarjetas al de los usuarios
UPDATE cliente 
INNER JOIN tarjetas
 select 
	tarjetas.Owner,
	TRIM(substr(tarjetas.Owner, instr(tarjetas.Owner,' ')+2)) AS first_name,
	TRIM(substr(tarjetas.Owner, 1, instr(tarjetas.Owner,' ')-1)) AS last_name
from tarjetas
ON Tarjetas.id=cliente.customer_id
set first_name = cliente.customer_name, last_name=last_name
;


