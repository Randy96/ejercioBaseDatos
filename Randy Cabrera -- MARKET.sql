CREATE DATABASE Market;
USE Market;
CREATE TABLE Productos(
idProducto INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR(30),
precio DECIMAL 
);
CREATE TABLE TipoProducto(
idTipo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (30),
idProducto INT,
FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
CREATE TABLE Clientes (
idCliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (30),
apellido VARCHAR (30),
telefono VARCHAR (10),
direccion VARCHAR (90)
);
CREATE TABLE Detalles (
idDetalle INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idProducto INT,
cantidad INT,
precio INT,
FOREIGN KEY (idProducto) REFERENCES Productos (idProducto)
);
CREATE TABLE Facturas (
idFactura INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
numero INT,
fecha DATETIME,
idCliente INT,
idDetalle INT,
total DECIMAL,
FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
FOREIGN KEY (idDetalle) REFERENCES Detalles(idDetalle)
);