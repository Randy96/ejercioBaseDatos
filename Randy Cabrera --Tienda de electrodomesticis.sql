create database TiendaElectrodomesticos;
use TiendaElectrodomesticos;
create table Clientes (
    id int not null primary key auto_increment,
    nombre varchar (50) not null,
    apellido varchar (50) not null,
    tipoElectrodomestico varchar (50) not null,
    celular varchar (50),
    descripsion varchar (120) not null
);
CREATE TABLE Electrodomesticos (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
tipo VARCHAR (50),
año INT (4),
garantia INT (10),
precio INT
);
CREATE TABLE Venta (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombreProducto INT,
cliente INT,
fechaVenta DATE,
cantidad VARCHAR (30),
FOREIGN KEY (nombreElectrodomestico) REFERENCES tipoElectrodomestico(id),
FOREIGN KEY (cliente) REFERENCES Clientes(id)
);
INSERT INTO Clientes (nombre, apellido, tipoElectrodomestico,celular,descripsion)
VALUES ("Pepe","Grillo","computadora","098786787","computadora dell con 4gbs de ram corei 7 sin novedad");
SET @ultimoIdClientes = LAST_INSERT_ID(); 	
INSERT INTO Electrodomesticos (nombre, tipo, año, garantia, precio)
VALUES ("licuadora","Durex","2018",2018,1,"500");
SET @ultimoIdVideojuegos =LAST_INSERT_ID();
INSERT INTO Venta (nombreproducto,cliente,fechaVenta,cantidad)
VALUES (@ultimoIdVProducto,@ultimoIdClientes,20180614,"2");
-- Segundo Registro 
INSERT INTO Clientes (nombre, apellido, tipoElectrodomestico,celular,descripsion)
VALUES ("Carlos","Torres","tablet","0995368705","sistema android");
SET @ultimoIdClientes = LAST_INSERT_ID(); 	
INSERT INTO Electrodomesticos (nombre, tipo, año, garantia, precio)
VALUES ("microondas","teka","2019",2019,2,"300");
SET @ultimoIdElectrodomesticos =LAST_INSERT_ID();
INSERT INTO Venta (nombreElectrodomestico,cliente,fechaVenta,cantidad)
VALUES (@ultimoIdElectrodomesticos,@ultimoIdClientes,20180510,"1");
-- Tercer Registro
INSERT INTO Clientes (nombre, apellido, tipoElectrodomestico,celular,descripsion)
VALUES ("Estefania","Marin","celular","09875787","sony c4");
SET @ultimoIdClientes = LAST_INSERT_ID(); 	
INSERT INTO Electrodomesticos (nombre, tipo, año, garantia, precio)
VALUES ("Celular","Sony","2018",2018,2,"400");
SET @ultimoIdElectrodomestico =LAST_INSERT_ID();
INSERT INTO Venta (nombreElectrodomestico,cliente,fechaVenta,cantidad)
VALUES (@ultimoIdElectrodomestico,@ultimoIdClientes,2180302,"5");
-- Contador
SELECT AVG (año) FROM Electrodomestico;
-- Contador de repetidos
SELECT nombre, count(nombre) as cantidad from Clientes group by nombre;