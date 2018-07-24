create database ejerClaseMascota;

use ejerClaseMascota;
create table MascotasDueño(
id int not null auto_increment ,
dueño varchar (50),
mascota1 varchar (50),
mascota2 varchar (50),
mascota3 varchar (50),
mascota4 varchar (50)
);

create table Mascotas(
id int not null auto_increment,
nombre varchar (50)
);
create table Dueño (
id int not null auto_increment,
nombre varchar (50)
);
create table Mascotas_Dueño (
id int not null auto_increment,
idMascota int,
idDueño int,
foreign key  (idMascota) references Mascotas(id),
foreign key (idDueño) references Dueño(id)
);