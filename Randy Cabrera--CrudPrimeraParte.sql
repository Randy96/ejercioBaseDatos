use concesionaria;

-- cliemte -
-- create --
 Delimiter $$
 create procedure clientesCleate(
nuevoNombre varchar (23),
nuevoApellido varchar (23),
nuevo_idAunto int,
out ultumoID int
)

begin

insert into clientes (
nombre,
apellido,
idAuto
)
values (
nuevoNombre,
nuevoApellido,
nuevo_idAuto
); 
set ultimoID = last_insert_id();
end $$


-- call = llamar al procedimiento no olvidar --
-- read --
delimiter $$
create procedure clientesRead (
read_nombre varchar (23),
read_apellido varchar (23)
)
begin 
select clientes.nombre,clientes.apellido
from clientes 
where clientes.nombre = read_nombre and clientes.apellidos = read_apellido;
end $$
delimiter $$
-- update--
delimiter $$
create procedure clientesUpdate (
update_nombre varchar (23),
update_apellido varchar (23),
update_idAuto int,
update_id int
)
begin 
update clientes
set nombre = update_nombre, apellido = update_apellido, idAunto = update_idAuto
where clientes.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure clientesDelete (
borrar_id int 
) 
begin
delete from clientes 
where clientes.id = borrar_id;
end $$


-- cochesVendidos  --
-- create --
 Delimiter $$
 create procedure cochesVendidosCreate (
nuevaMarca varchar (23),
nuevoModelo varchar (23),
nuevoColor varchar (23),
out ultumoID int
)

begin

insert into cochesVendidos (
marca,
modelo,
color
)
values (
nuevaMarca,
nuevoModelo,
nuevoColor
); 
set ultimoID = last_insert_id();
end $$

  -- read --
delimiter $$
create procedure cochesVendidosRead (
read_marca varchar (23),
read_modelo varchar (23),
read_color varchar (23)
)
begin 
select chochesVendidos.marca, cochesVendidos.modelo, cochesVendidos.color
from chochesVendidos
where cochesVendidos.marca = read_marca and cochesVendidos.modelo = read_modelo and cochesVendidos.color = read_color;
end $$
delimiter $$

-- update--
delimiter $$
create procedure cochesVendidosUpdate (
update_marca varchar (23),
update_modelo varchar (23),
update_color varchar (23),
update_id int
)
begin 
update cochesVendidos
set marca = update_marca, modelo = update_modelo, color = update_color
where cochesVendidos.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure cochesVendidosDelate (
borrar_id int 
) 
begin
delete from cochesVendidos 
where cochesVendidos.id = borrar_id;
end $$

-- revisiones -----
-- create --
 Delimiter $$
 create procedure revisionesCreate(
nuevoCambioAceite boolean,
nuevoCambioFiltros boolean,
nuevoCambioFrenos boolean,
out ultumoID int
)

begin

insert into revisiones (
cambioAceite,
cambioFiltros,
cambioFrenos
)
values (
nuevoCambioAceite,
nuevoCambioFiltros,
nuevoCambioFrenos
); 
set ultimoID = last_insert_id();
end $$

-- read --
delimiter $$
create procedure revisionesRead (
read_cambioAceite boolean,
read_cambioFiltros boolean,
read_cambioFrenos boolean
)
begin 
select revisiones.cambioAceite, revisiones.cambioFiltros , revisiones.cambioFrenos
from revisiones
where revisiones.cambioAceite = read_cambioAceite and revisiones.cambioFiltros = read_cambioFiltros and revisiones.cambioFrenos = read_cambioFrenos;
end $$
delimiter $$
-- update--
delimiter $$
create procedure revisionesUpdate (
update_cambioAceite boolean,
update_cambioFiltros boolean,
update_cambioFrenos boolean,
update_id int
)
begin 
update revisiones
set cambioAceite = update_cambioAceite, cambioFiltros = update_cambioFiltros, cambioFrenos = update_cambioFrenos
where revisiones.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure revisionesDelete (
borrar_id int 
) 
begin
delete from revisiones
where revisiones.id = revisiones_id;
end $$

-- repuestos --
-- create --
 Delimiter $$
 create procedure repuestosCleate(
nuevotipoRepuesto varchar (23),
nuevoPrecio int,
out ultumoID int
)

begin

insert into repuestos (
tipoRepuesto,
precio
)
values (
nuevoTipoRepuesto,
nuevoPrecio
); 
set ultimoID = last_insert_id();
end $$


-- call = llamar al procedimiento no olvidar --
-- read --
delimiter $$
create procedure repuestoRead (
read_tipoRepuesto varchar (23),
read_precio int
)
begin 
select repuesto.tipoRepuesto, repuesto.precio
from repuestos 
where repuestos.tipoRepuesto = read_tipoRepuesto and repuestos.precio = read_precio;
end $$
delimiter $$
-- update--
delimiter $$
create procedure preciosUpdate (
update_tipoRepuesto varchar (23),
update_precio int,
update_id int
)
begin 
update repuestos
set repuesro = update_tipoRepuesto, precio = update_precio
where repuesto.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure repuestosDelete (
borrar_id int 
) 
begin
delete from repuestos
where repuestos.id = borrar_id;
end $$

-- proveedores -
-- create --
 Delimiter $$
 create procedure provedoresCleate(
nuevoTipoCarro varchar (23),
nuevoPrecio int,
nuevo_nombreProveedor int,
out ultumoID int
)

begin

insert into proveedores (
tipoCarro,
precio,
nombreProveedor
)
values (
nuevotipoCarro,
nuevoPrecio,
nuevo_nombreProveedor
); 
set ultimoID = last_insert_id();
end $$


-- read --
delimiter $$
create procedure proveedoresRead (
read_tipoCarro varchar (23),
read_precio int,
read_nombreProveedor varchar (23)
)
begin 
select proveedores.tipoCarro, proveedores.precio , proveedores.nombreProveedor
from proveedores
where proveedores.tipoCarro = read_tipoCarro and proveedores.precio = read_precio and proveedor.nombreProveedores = read_nombreProveedor;
end $$
delimiter $$
-- update--
delimiter $$
create procedure proveedoresUpdate (
update_tipoCarro varchar (23),
update_precio int,
update_nombreProveedor varchar (23),
update_id int
)
begin 
update proveedores
set tipoCarro = update_tipoCarro, precio = update_precio, nombreProveedor = update_nombreProveedor
where proveedores.id = update_id;
end $$
delimiter ;

-- delete--
delimiter $$
create procedure proveedoresDelete (
borrar_id int 
) 
begin
delete from proveedores 
where proveedores.id = borrar_id;
end $$

