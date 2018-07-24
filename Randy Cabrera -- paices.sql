create database paices;
USE paices;

CREATE TABLE Continentes(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50)
);
CREATE TABLE Paises(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
idContinente INT,
FOREIGN KEY (idContinente) REFERENCES Continentes(id)
);
CREATE TABLE Provincias(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
idPais INT,
FOREIGN KEY (idPais) REFERENCES Paises(id)
);
CREATE TABLE Ciudades(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
idProvincia INT,
FOREIGN KEY (idProvincia) REFERENCES Provincias(id)
);
CREATE TABLE Parroquias(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre VARCHAR (50),
idCiudad INT,
FOREIGN KEY (idCiudad) REFERENCES Ciudades(id)
);

USE paices;

INSERT INTO Continentes (nombre) VALUES ("America");
SET @idContiente = last_insert_id();
INSERT INTO Paises (nombre,idContinente) VALUES ("Ecuador",@idContiente);
SET @idPais = last_insert_id();
INSERT INTO Provincias (nombre,idPais) VALUES ("Pichincha",@idPais);
SET @idProvincia = last_insert_id();
INSERT INTO Ciudades (nombre,idProvincia) VALUES ("Quito",@idProvincia);
SET @idCiudad = last_insert_id();
INSERT INTO Parroquias (nombre,idCiudad) VALUES ("Mena dos",@idCiudad);
