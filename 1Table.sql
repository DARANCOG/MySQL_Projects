create database practica;
show databases;
use practica;

CREATE TABLE usuarios (
id int,
tipo varchar (255),
estado varchar(255),
PRIMARY KEY (id)
);

-- Primary key auto incrementar
Alter table usuarios modify column id int auto_increment;

-- Insertar datos dentro de la tabla 
insert into usuarios (tipo,estado) value ('hombre','soltero');
insert into usuarios (tipo,estado) value ('mujer','casada');
insert into usuarios (tipo,estado) value ('hombre','casado');
insert into usuarios (tipo,estado) value ('mujer','soltera');
insert into usuarios (tipo,estado) value ('hombre','casado');
insert into usuarios (tipo,estado) value ('mujer','soltera');
-- Busquedas
select * from usuarios;
select * from usuarios where id = 1;
select * from usuarios where estado = 'soltero';
select * from usuarios where tipo = 'hombre';
select * from usuarios where tipo = "mujer" and estado = "soltera"; 

-- Actualizacion de datos
update usuarios set tipo = 'hombre' where id = 1;
update usuarios set estado = 'soltero' where id = 1;
update usuarios set estado = 'casada' where id = 8;
update usuarios set tipo = 'mujer' where id = 8;
-- Eliminacion de datos
delete from ususarios where estado = 'soltero';
delete from usuarios where id = 8



