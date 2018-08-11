use aeropuertoSistema;
-- aeropuerto -
-- create --
 Delimiter $$
 create procedure aeropuertoCleate(
nuevo_nombre_a varchar (23),
nuevo_ciudad_a varchar (23),
nueva_direccion_a varchar (23),
nuevo_ciudad_a varchar (23),
out ultumoID int
)

begin

insert into aeropuerto (
nombre_a,
ciudad_a,
direccion_a,
pais_a
)
values (
nuevoNombre_a,
nuevaCiudad_a,
nuevaDireccion_a,
nuevaPais_a
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure aeropuertoRead (
read_nombre_a varchar (23),
read_ciudad_a varchar (23),
read_direccion_a varchar (23),
read_pais_a varchar (23)
)
begin 
select aeropuerto.nombre_a, aeropuerto.ciudad_a, aeropuerto.direccion_a, aeropuerto.ciudad_a
from aeropuerto
where aeropuerto.nombre_a = read_nombre_a and aeropuerto.ciudad_a = read_ciudad_a and aeropuerto.direccion_a = read_direccion_a and aeropuerto.pais_a = read_pais_a;
end $$
delimiter $$
-- update--
delimiter $$
create procedure aeropuertoUpdate (
update_nombre_a varchar (23),
update_ciudad_a varchar (23),
update_direccion_a varchar (23),
update_pais_a varchar (23),
update_id int
)
begin 
update aeropuerto
set nombre_a = update_nombre_a, ciudad_a = update_ciudad_a, direccion_a = update_direccion_a, pais_a = update_pais_a
where aeropuerto.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure aeropuertoDelete (
borrar_id int 
) 
begin
delete from aeropuerto 
where aeropuerto.id = borrar_id;
end $$


-- Pasajeros -
-- create --
 Delimiter $$
 create procedure pasajerosCleate(
nuevoNombre varchar (23),
nuevoApellido varchar (23),
nuevaCedula varchar (23),
out ultumoID int
)

begin

insert into clientes (
nombre,
apellido,
cedula
)
values (
nuevoNombre,
nuevoApellido,
nuevaCedula
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure pasajerosRead (
read_nombre varchar (23),
read_apellido varchar (23),
read_cedula varchar (23)
)
begin 
select pasajeros.nombre, pasajeros.apellido, pasajeros.cedula
from pasajeros 
where pasajeros.nombre = read_nombre and pasajeros.apellidos = read_apellido and pasajeros.cedula = read_cedula;
end $$
delimiter $$
-- update--
delimiter $$
create procedure pasajerosUpdate (
update_nombre varchar (23),
update_apellido varchar (23),
update_cedula varchar (23),
update_id int
)
begin 
update pasajeros
set nombre = update_nombre, apellido = update_apellido, cedula = update_cedula
where pasajeros.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure pasajerosDelete (
borrar_id int 
) 
begin
delete from pasajeros 
where pasajeros.id = borrar_id;
end $$



-- vuelos -
-- create --
 Delimiter $$
 create procedure vuelosCleate(
nuevoDestino varchar (23),
nuevaEcomienda varchar (23),
nuevoVueloChartes varchar (23),
out ultumoID int
)

begin

insert into vuelos (
destino,
ecomienda,
vueloChartes
)
values (
nuevoDestino,
nuevaEcomienda,
nuevoVueloChartes
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure vuelosRead (
read_destino varchar (23),
read_ecomienda varchar (23)
)
begin 
select vuelos.destino, vuelos.ecomienda
from vuelos 
where vuelos.destino = read_destino and vuelos.ecomienda = read_ecomienda;
end $$
delimiter $$
-- update--
delimiter $$
create procedure vuelosUpdate (
update_destino varchar (23),
update_ecomienda varchar (23),
update_id int
)
begin 
update vuelos
set destino = update_destino, ecomienda = update_ecomienda
where vuelos.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure vuelosDelete (
borrar_id int 
) 
begin
delete from vuelos 
where vuelos.id = borrar_id;
end $$


-- ofertas -
-- create --
 Delimiter $$
 create procedure ofertasCleate(
nuevoPrecio varchar (23),
nuevoCategoria varchar (23),
out ultumoID int
)

begin

insert into ofertas (
precio,
categoria
)
values (
nuevoPrecio,
nuevaCategoria
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure ofertasRead (
read_precio varchar (23),
read_categoria varchar (23)
)
begin 
select ofertas.precio, ofertas.categoria
from ofertas 
where ofertas.precio = read_precio and ofertas.categoria = read_categoria;
end $$
delimiter $$
-- update--
delimiter $$
create procedure ofertasUpdate (
update_precio varchar (23),
update_categoria varchar (23),
update_id int
)
begin 
update ofertas
set precio = update_precio, categoria = update_categoria
where ofertas.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure ofertasDelete (
borrar_id int 
) 
begin
delete from ofertas 
where ofertas.id = borrar_id;
end $$


-- Pasajeros -
-- create --
 Delimiter $$
 create procedure pasajerosCleate(
nuevoNombre varchar (23),
nuevoApellido varchar (23),
nuevaCedula varchar (23),
out ultumoID int
)

begin

insert into clientes (
nombre,
apellido,
cedula
)
values (
nuevoNombre,
nuevoApellido,
nuevaCedula
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure pasajerosRead (
read_nombre varchar (23),
read_apellido varchar (23),
read_cedula varchar (23)
)
begin 
select pasajeros.nombre, pasajeros.apellido, pasajeros.cedula
from pasajeros 
where pasajeros.nombre = read_nombre and pasajeros.apellidos = read_apellido and pasajeros.cedula = read_cedula;
end $$
delimiter $$
-- update--
delimiter $$
create procedure pasajerosUpdate (
update_nombre varchar (23),
update_apellido varchar (23),
update_cedula varchar (23),
update_id int
)
begin 
update pasajeros
set nombre = update_nombre, apellido = update_apellido, cedula = update_cedula
where pasajeros.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure pasajerosDelete (
borrar_id int 
) 
begin
delete from pasajeros 
where pasajeros.id = borrar_id;
end $$



-- vuelos -
-- create --
 Delimiter $$
 create procedure vuelosCleate(
nuevoDestino varchar (23),
nuevaEcomienda varchar (23),
nuevoVueloChartes varchar (23),
out ultumoID int
)

begin

insert into vuelos (
destino,
ecomienda,
vueloChartes
)
values (
nuevoDestino,
nuevaEcomienda,
nuevoVueloChartes
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure vuelosRead (
read_destino varchar (23),
read_ecomienda varchar (23)
)
begin 
select vuelos.destino, vuelos.ecomienda
from vuelos 
where vuelos.destino = read_destino and vuelos.ecomienda = read_ecomienda;
end $$
delimiter $$
-- update--
delimiter $$
create procedure vuelosUpdate (
update_destino varchar (23),
update_ecomienda varchar (23),
update_id int
)
begin 
update vuelos
set destino = update_destino, ecomienda = update_ecomienda
where vuelos.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure vuelosDelete (
borrar_id int 
) 
begin
delete from vuelos 
where vuelos.id = borrar_id;
end $$


-- reservas -
-- create --
 Delimiter $$
 create procedure reservasCleate(
nuevoNum_serie int,
nuevaFecha datetime,
out ultumoID int
)

begin

insert into reservas (
num_serie,
fecha
)
values (
nuevoNum_serie,
nuevaFecha
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure reservasRead (
read_num_serie int,
read_fecha datetime
)
begin 
select reservas.num_serie, reservas.fecha
from reservas
where reservas.num_serie = read_num_serie and reservas.fecha = read_fecha;
end $$
delimiter $$
-- update--
delimiter $$
create procedure reservasUpdate (
update_num_serie int,
update_categoria datetime,
update_id int
)
begin 
update reservas
set num_serie = update_num_serie, fecha = update_fecha
where reservas.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure reservasDelete (
borrar_id int 
) 
begin
delete from reservas 
where reservas.id = borrar_id;
end $$