create database concesionaria;
use concesionaria;
create table reviones (
	id int not null auto_increment,
    cambioAceite boolean,
    cambioFiltro boolean,
    revisionFrenos boolean,
    otro varchar (34),
    matricula varchar (23),
    primary key (id)
);

create table chochesVendidos (
	id int not null auto_increment,
		marca varchar (23),
        modelo varchar (23),
        color varchar (23),
        precio int not null,
        extras varchar (23),
        idCliente int not null,
    primary key (id)
);
create table cientes (
		id int not null auto_increment,
        nombre varchar (23),
        apellido varchar (23),
        telefono varchar (23),
        fechaNacimiento varchar (23),
        primary key (id)
);

create table repuesto (
	id int not null auto_increment,
    tipoRepuesto varchar (23),
    precio int  not null,
    primary key (id)
);

create table proveedores (
	id int not null auto_increment,
    tipoCarro varchar (23),
    Precio int not null,
    nombreProveedor varchar (23),
    primary key (id)
);