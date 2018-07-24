-- EJECUTAR UNO A LA VEZ!!

-- Seleccionar la base de Datos
USE TiendaElectrodomesticos;
-- Ingresar registros en la tabla
INSERT INTO Clientes (nombre, apellido, tipoElectrodomestico,celular,descripsion)
VALUES ("Marco","Torres","celular","098786787","motorola");
INSERT INTO Clientes (nombre, apellido, tipoElectrodomestico,celular,descripsion)
VALUES ("Cris","Cañizares","lapto","09966760","gama alta");
INSERT INTO Clientes (nombre, apellido, tipoElectrodomestico,celular,descripsion)
VALUES ("Tania","Cabrera","cimputadora","09875787","gama baja");
-- ELIMINAR UN REGISTRO 
-- REVISAR CON UN SELECT LO QUE DESEAMOS ELIMINAR
SELECT * FROM Clientes WHERE id = 2;
-- ELIMINAR EL REGISTRO DE LA TABLA 
DELETE FROM Clientes WHERE id = 2;
-- CONSULTAR TODOS LOS DATOS DE LA TABLA
SELECT * FROM Clientes ;
-- CONSULTAR NOMBRE Y APELLIDO DE LA TABLA EN UNA COLUMNA
SELECT CONCAT(nombre," ",apellido)FROM Clientes;
-- CONSULTAR REGISTROS POR CONDICIONES
SELECT * FROM Clientes WHERE nombre="Esmeraldas";