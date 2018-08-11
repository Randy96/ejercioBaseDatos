Create database empresas;
use empresas;
create table proyecto (
	id int not null auto_increment,
    nombre varchar (23),
    fechaInicio datetime,
    fechaFinal datetime,
    primary key (id)
);

create table empreado_proyecto (
	id int not null auto_increment,
    idEmpreado int,
    idProyecto int,
    primary key (id)
);

create table empleadoz (
	id int not null auto_increment,
	nombre varchar (23),
	apellido varchar (23),
	email varchar (23),
	direccion varchar (23),
	genero varchar (34),
	fechar datetime ,
	telefono varchar (10),
	sueldo int,
	primary key (id)
);

create table departamento (
	id int not null auto_increment,
    nombre varchar (23),
    primary key (id)
);


select * from empleados;

update empleados set sueldo = 1200 where apellidos = "Torres" and id=1;
select sueldo from empleados where apellido = "Torres";
rollback;
select sueldo from empleados where apellidos = "Torres";