ALTER TABLE zapatillas
	ADD COLUMN (marca VARCHAR(45) NOT NULL, 
    talla INT NOT NULL);
    
ALTER TABLE empleados
	MODIFY COLUMN salario FLOAT NOT NULL;

ALTER TABLE clientes
	DROP COLUMN pais;

ALTER TABLE facturas
	ADD COLUMN total FLOAT;

INSERT INTO zapatillas (modelo, color, marca, talla)
	VALUES	('XQYUN',' Negro', 'Nike', 42), 
			('UOPMN', 'Rosas','Nike', 39),
            ('OPNYT', 'Verdes', 'Adidas', 35);

-- Cambiamos las restricciones de empleados_salario para que pueda ser nulo

ALTER TABLE empleados
	MODIFY COLUMN salario FLOAT;
    
-- Si lo intentas y fallas, te corre el contador

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
	VALUES	('Laura', 'Alcobendas', 25987, 20100903),
			('Maria', 'Sevilla', NULL, 20010411),
			('Esther', 'Oviedo', 30165.98, 20001129);

INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES	('Mónica', '1234567289', 'monica@email.com', 'Calle felicidad', 'Móstoles', 'Madrid', 28176),
			('Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
            ('Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);
            
INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES	(123,20011211, 1, 8, 1, 54.98),
			(1234,20050523, 1, 7, 3, 89.91),
            (12345, 20150918, 2, 9, 3, 76.23);

UPDATE zapatillas
	SET color = 'Amarillo'
    WHERE color = 'Rosas';
    
UPDATE empleados
	SET tienda = 'A Coruña'
    WHERE tienda = 'Alcobendas';


            
            
    

