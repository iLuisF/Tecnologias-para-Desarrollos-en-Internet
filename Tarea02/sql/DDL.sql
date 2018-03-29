create database cine;

use cine;

create table BOLETOS(
	id	integer primary key auto_increment,
	nombre	varchar(255),
    titulo_pelicula	varchar(255),
    precio	decimal,
    sala	integer,
    asiento	varchar(2),
    cine	varchar(255),
    fecha_hora datetime    
);

insert into boletos (id, nombre, titulo_pelicula, precio, sala,
 asiento, cine) values (1, "hola", "hola", 15.00, 1, ab, "hola");