create database aeropuestoSistema;
use aeropuertoSistema;
create table aeropuerto (
	id int not null auto_increment,
    nombre_a varchar (23),
    ciudad_a varchar (23),
    direccion_a varchar (23),
    pais_a varchar (23),
    primary key (id )
);

create  table pasajeros(
id int not null auto_increment,
nombre varchar (23),
apellido varchar (23),
cedula varchar (23),
primary key (id)
);

create table vuelos (
id int not null auto_increment,
destino varchar (23),
ecomiendas varchar (23),
VuelosChartes varchar (23),
primary key (id)
);

create table ofertas (
id int not null auto_increment,
precio int not null,
categoria varchar (23),
primary key (id)
);

create table reservas (
id int not null auto_increment,
idAeropuerto int,
num_serie int,
fecha datetime,
primary key (id)
);




