USE musica;    
INSERT INTO Musica VALUES(1,'Suspicious Minds','Elvis Presley','1934');
INSERT INTO Musica VALUES(2,'Black Or White','Michael Jackson','1991');	
INSERT INTO Artistas VALUES(1,'Michael Jackson','Conocido como el Rey del Pop.');
INSERT INTO Artistas VALUES(2,'Elvis Presley','conocido como el Rey del Rock and Roll.');    
INSERT INTO Albums VALUES(1,' Aloha from Hawaii','Memphis','1977');
INSERT INTO Albums VALUES(2,'Released','Motown','1972');    
INSERT INTO Genero VALUES(1,'pop','rock');
INSERT INTO Genero VALUES(2,'rock and roll','pop clasico');
INSERT INTO Disquera VALUES(1,'EMI','Brook Green','1988');
INSERT INTO Disquera VALUES(2,'BMG Music','1998');    
SELECT * FROM Musica;    
SELECT * FROM Artista;
SELECT * FROM Albums;
SELECT * FROM Genero;
SELECT * FROM Disquera;
ALTER TABLE Juego ADD prueba Varchar (10);
/*Eliminación de la base de datos Juegos si esta existe.*/
DROP DATABASE IF EXISTS Musica;
/*Creación de la base de datos llamada Juegos.*/
CREATE DATABASE Musica DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
/*Selección de la la base de datos con la que se va a trabajar*/
USE Musica;
/*Eliminaos la tabla si Desarrollador existe antes*/
DROP TABLE IF EXISTS Artista;
/*Creamos una tabla llamada desarrollador*/
CREATE TABLE Artista(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    descripcion VARCHAR(300) NOT NULL,
    PRIMARY KEY (id));
/*Eliminaos la tabla Juego si existe antes*/
DROP TABLE IF EXISTS Musica;
/*Creamos una tabla llamada juego*/
CREATE TABLE Musica(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NULL,
    genero VARCHAR(50) NOT NULL,
	fecha DATE,
    PRIMARY KEY (id));
/*Eliminaos la tabla Consola si existe antes*/
DROP TABLE IF EXISTS Albums;
/*Creamos una tabla llamada Consola*/
CREATE TABLE Albums(
    id INT NOT NULL AUTO_INCREMENT,
    nombreDisquera VARCHAR(40) NULL,
    lugar VARCHAR(50) NOT NULL,
	fecha DATE,
    PRIMARY KEY (id));
/*Eliminaos la tabla Plataforma si existe antes*/
DROP TABLE IF EXISTS Genero;
/*Creamos una tabla llamada Plataforma*/
CREATE TABLE Genero(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NULL,
    lugar VARCHAR(50) NOT NULL,
    PRIMARY KEY (id));
/*Eliminaos la tabla SistemaOp si existe antes*/
DROP TABLE IF EXISTS Disquera;
/*SistemaOp es la abreviatura de Sistema Operativo*/
CREATE TABLE Disquera(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(40) NULL,
    lugar VARCHAR(50) NOT NULL,
    año DATE,
    PRIMARY KEY (id));