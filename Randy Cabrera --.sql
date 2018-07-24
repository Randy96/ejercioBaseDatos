USE musica;    

INSERT INTO Genero VALUES(1,'Cumbia','Rock','Cumbia Pop');

INSERT INTO Genero VALUES(2,'Bachata','Merengue','Salsa');	

INSERT INTO generosGrupos VALUES(1,'Sonora Dinamita','Mar Azul');

INSERT INTO generosGrupos VALUES(2,'Kizz','Marama');    

INSERT INTO Grupo VALUES(1,'Sonora Dinamita','1997');

INSERT INTO Grupo VALUES(2,'Marama','2000');       

SELECT * FROM Genero;    

SELECT * FROM generosGrupos;

SELECT * FROM Grupo;

ALTER TABLE Genero ADD prueba Varchar (10);