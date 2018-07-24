CREATE DATABASE musica;
/* Creamos una tabla llamada Pinceles */

CREATE  TABLE  Genero (
    
	id INT  NOT NULL AUTO_INCREMENT,
    
	descripcion VARCHAR ( 100 ) NOT NULL ,
    
	PRIMARY KEY (id));
/* Creamos una tabla llamada Lienzo */

CREATE TABLE generosGrupos (
    
	id INT  NOT NULL AUTO_INCREMENT,
    
	nombre VARCHAR ( 30 ) NOT NULL ,
	
	PRIMARY KEY (id));


/* Creamos una tabla llamada Pintores */

CREATE TABLE Grupo (
    
	id INT  NOT NULL AUTO_INCREMENT,
    
	nombre VARCHAR ( 40 ) NOT NULL ,
	
	Fecha DATE,
 
    PRIMARY KEY (id));
