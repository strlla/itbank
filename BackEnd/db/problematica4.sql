SELECT cliente.branch_id, sucursal.branch_name as Sucursal,
    count(cliente.branch_id) as Cantidad_clientes
FROM cliente as c
INNER JOIN sucursal as s
ON cliente.branch_id = sucursal.branch_id
GROUP BY cliente.branch_id
ORDER BY cantidad_clientes DESC;

SELECT COUNT(cliente.customer_id) AS "clientes", COUNT(employee_id) AS "empleados", branch_name AS
"sucursal", (COUNT(cliente.customer_id)/COUNT(employee_id)) AS "empleados por cliente"
FROM empleado
INNER JOIN cliente ON empleado.branch_id = cliente.branch_id
INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id
GROUP BY branch_name; 

SELECT COUNT(cliente.customer_id) AS "clientes", COUNT(employee_id) AS "empleados", branch_name AS
"sucursal", (COUNT(cliente.customer_id)/COUNT(employee_id)) AS "empleados por cliente"
FROM empleado
INNER JOIN cliente ON empleado.branch_id = cliente.branch_id
INNER JOIN sucursal ON cliente.branch_id = sucursal.branch_id
GROUP BY branch_name;

SELECT  branch_name AS "sucursal",COUNT(marcaID) AS "cantidad de tarjetas de credito"
FROM tarjeta
INNER JOIN cliente ON tarjeta.customer_id=cliente.customer_id
INNER JOIN sucursal ON sucursal.branch_id=cliente.branch_id
GROUP BY cliente.brach_id
ORDER BY cliente.brach_id, tarjeta.customer_id DESC ;

SELECT COUNT(cliente.branch_id) AS "sucursal", COUNT(loan_id) AS "creditos otorgados", 
COUNT(cliente.branch_id)  / COUNT(loan_id) AS "promedio"
FROM sucursal
INNER JOIN cliente ON cliente.branch_id = sucursal.branch_id
INNER JOIN prestamo ON cliente.customer_id = prestamo.customer_id;

CREATE TABLE IF NOT EXISTS auditoria_cuenta(
    operation_id integer PRIMARY KEY AUTOINCREMENT,
    old_id integer NOT NULL,
    new_id integer,
    old_balance integer NOT NULL,
    new_balance integer,
    old_iban TEXT NOT NULL,
    new_Iban text,
    old_type text NOT NULL,
    new_type text,
    user_action text,
    created_at text);
    
CREATE TRIGGER audi AFTER INSERT ON auditoria_cuenta
BEGIN 
INSERT INTO auditoria (Old_balance, New_balance, Old_iban, New_iban, Old_type, New_type) VALUES(NEW.Old_balance, NEW.New_balance, NEW.Old_iban, NEW.New_iban, NEW.Old_type, NEW.New_type);
END;

UPDATE cuenta
SET balance = balance - 100
WHERE account_id BETWEEN 10 AND 14;

CREATE unique index DNI ON cliente(customer_DNI);

CREATE TABLE IF NOT EXISTS "movimientos" (
	"mov_id" INTEGER PRIMARY KEY AUTOINCREMENT,
	"numero_cuenta" INTEGER NOT NULL,
	"monto" REAL NOT NULL,
	"tipo_op" TEXT NOT NULL,
	"hora" TEXT NOT NULL);

BEGIN TRANSACTION;

    UPDATE cuenta
    SET balance = balance - 1000
    WHERE account_id = 200;

    UPDATE cuenta
    SET balance = balance + 1000
    WHERE account_id = 400;

    INSERT INTO movimientos (
    "numero_cuenta",
    "monto",
    "tipo_op",
    "hora")
    VALUES (200, -1000, "transferencia", datetime("now"));

    INSERT INTO movimientos (
    "numero_cuenta",
    "monto",
    "tipo_op",
    "hora")
    VALUES (400, +1000, "transferencia", datetime("now"));
    
ROLLBACK;
