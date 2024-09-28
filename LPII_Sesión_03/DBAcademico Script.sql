create database dbAcademico;
use dbAcademico;

create table Cursos(
idCurso 	int AUTO_INCREMENT primary key,
codigo 		varchar(100) unique,
nombre 		varchar(100),
nivel 		varchar(100),
docente		varchar(100));

insert into Cursos (codigo, nombre, nivel, docente) 
values('jv','Java Programmer','Nivel Basico','Abraham Jara'),
('bd','Base de Datos','Nivel Básico','Abraham Jara'),
('as','Análisis de Sistemas','Nivel Intermedio','Abraham Jara'),
('lp1','Lenguaje de programación 1','Nivel Intermedio','Walter Napan'),
('poo1','Programación OO 1','Nivel Intermedio','Abraham Jara');

create table especialidad( 
 codesp varchar(20) primary key,
 descripc varchar(100));
 
 create table docente(
 idoc	int AUTO_INCREMENT primary key,
 cod_doc varchar(3),
 nombredoc	varchar(100),
 codesp varchar(28) references especialidad,
 telefono	varchar(20),
 edad	int,
 correo	varchar(100)
 );
 
 
INSERT INTO docente (cod_doc, nombredoc, telefono, edad, correo) 
VALUES('aj','Abraham Jara','943853034','34', 'correo1@cibertec.edu.pe'),
('jl','Javier Lopez','654853345','55', 'correo2@cibertec.edu.pe'),
('wt','Wilder Torres','3453853034','45', 'correo3@cibertec.edu.pe');

INSERT INTO especialidad(codesp, descripc) 
VALUES('Tecnologia','Experto en tecnologías TI'),
('Informatica','Experto en Informatica'),
('Excel','Experto en Excel');

create table TipoDocumento(
idTipo		varchar(3) primary key,
documento	varchar(100));

create table Estudiantes(
idEst 			int AUTO_INCREMENT primary key,
nombreApe		varchar(100),
tipoDocumento	varchar(100) references TipoDocumento(idTipo),
nroDocumento	varchar(100),
telefono		varchar(20),
carrera			varchar(100));

insert into TipoDocumento values('DNI','Documento Nacional de Identidad'),
('CEX','Carnet de extranjería');

insert into Estudiantes(nombreApe,tipoDocumento,nroDocumento,telefono,carrera) 
values('Oliver Miranda','DNI','40441144','987845879','Computación y Sistemas'),
('Jorge Salazar','CEX','99995555','989898989','Adminsitración y Sistemas');

create table RolUser(
idrol 		varchar(3) primary key,
rolname 	varchar(50)
);

create table Usuario(
idUser 		varchar(6) primary key,
nombre 		varchar(100),
apellidos	varchar(100),
email		varchar(50),
password	varchar(20),
idrol		varchar(3) references RolUser
);

insert into RolUser values('adm','administrativo'),
('doc','docente'),('est','estudiante');

insert into Usuario values('usu001','Abraham','Jara Miranda','ajara@gmail.com','123','doc'),
('usu002','Manuel','Carrillo Nuñez','mcarrillo@gmail.com','456','est'),
('usu003','Rogelio','Tello','rtello@gmail.com','789','adm');

create table Matricula(
idMatricula 	int AUTO_INCREMENT primary key,
IdEst int not null,
IdCurso int not null,
FechaMatricula datetime not null,
Observacion varchar(100)
);

insert into Matricula
(idEst, idCurso, fechaMatricula,observacion)
values
(1,1,current_timestamp(),'Ninguna');
insert into Matricula
(idEst, idCurso, fechaMatricula,observacion)
values
(2,3,current_timestamp(),'Ninguna');
INSERT INTO Matricula (idEst,idCurso,fechaMatricula,observacion) VALUES
(2,5,current_timestamp(),'Ninguna');

create table Persona(
idPersona	int primary key,
nombre		varchar(100),
apellidos 	varchar(100)
);
