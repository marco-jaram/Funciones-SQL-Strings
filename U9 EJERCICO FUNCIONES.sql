
-- EJERCICIO DE  FUNDAMENTO DE BASES DE DATOS U9
--  Aspecto 3: Crea una tabla que permita almacenar la información sobre los productos de una tienda departamental. 
-- Incluye el número de campos que consideres pertinentes. Ingresa 5 registros y realiza las siguientes consultas:
--  

--     Dos consultas empleando Select junto con la función length.
--     Una consulta empleando Select junto con la función upper .
--     Una consulta empleando Select junto con la función initcap .
--     Una consulta empleando Select junto con la función lower .
--     Una consulta empleando Select junto con la función concat .

 
 create database  if not exists dbelectronic;
 use dbelectronic;
 create table if not exists dbelectronic.producto
 (
id int not null unique auto_increment, 
nombreProducto varchar(40) unique,
marca varchar(40),
origen varchar(40),
precio decimal(8,2)
 );
 -- agregando datos
insert into producto  values (0, 'Laptop',      'Hp',        'EU',    8900);
insert into producto  values (0, 'PC',          'Toshiba',   'Japon', 22000);
insert into producto  values (0, 'Monitor 27',  'DELL',      'EU',    6359);
insert into producto  values (0, 'Tablet 8',    'Samsumg',   'EU',    2800);
insert into producto  values (0, 'Ipad',        'Apple',     'EU',    32000);

select * from producto;
describe producto;

-- CONSULTAS:

-- Obteniando la longitud del nombre del producto con length
select length(nombreProducto) as longitud from producto;
select length(marca) as longitud from producto;

-- upper
select  nombreProducto, upper(marca) as nombre_mayusculas   from producto;

-- initcap

-- lower
select  nombreProducto, lower(marca) as marcalow  from producto;

-- concat
select  concat('-Procuto en desceutno-', nombreProducto, '-', marca)  from producto;
