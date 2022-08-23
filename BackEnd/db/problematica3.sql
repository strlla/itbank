SELECT account_id, balance
from cuenta
WHERE balance < 0
ORDER by balance desc;

SELECT customer_name, customer_surname,
(CASE WHEN dob is NOT NULL THEN cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob ) as int) END)as age
FROM cliente
WHERE customer_surname like "%Z%"

SELECT customer_name,customer_surname,
(CASE WHEN dob is NOT NULL THEN cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dob ) as int) END)as age, sucursal.branch_name
FROM cliente 
INNER JOIN sucursal on cliente.branch_id = sucursal.branch_id
WHERE customer_name like "brendan"
order by branch_name;

SELECT loan_total
FROM prestamo
where loan_total > 8000000
UNION 
SELECT loan_type
FROM prestamo
where loan_type = "PRENDARIO";

SELECT * FROM prestamo
WHERE loan_total > (SELECT AVG(loan_total) FROM prestamo);

SELECT count(*) FROM cliente
WHERE dob > (SELECT strftime('%Y.%m%d', "now") - 50 FROM cliente);

SELECT * FROM cuenta
WHERE balance > 8000
LIMIT 5;

SELECT * FROM prestamo
WHERE (SELECT substr(loan_date,6,2)) = '04' OR (SELECT substr(loan_date,6,2)) = '06' OR (SELECT substr(loan_date,6,2)) = '08'
ORDER BY loan_total;

SELECT loan_type,sum(loan_total) AS  loan_total_accu
FROM prestamo
GROUP BY loan_type;
