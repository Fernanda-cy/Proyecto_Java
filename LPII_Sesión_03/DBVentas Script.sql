create database DBVentas;
use DBVentas;

create table tbventas(
codventa	varchar(10),
codproducto	varchar(10),
fecha		date,
primary key(codventa,codproducto));

create table cliente(
idclie 		bigint(20) primary key,
nombre		varchar(100),
apellidos	varchar(100),
nombre_ciudad	varchar(100),
direccion_clie	varchar(100),
calle		varchar(100),
nro_home	varchar(20)
);

create table Producto(
idProd		int AUTO_INCREMENT primary key,
descripcion	varchar(100) not null,
precio		decimal(8,3),
estado 		varchar(30),
fechaIng	date,
stock		int
);

create index idx_desc on Producto(descripcion);
