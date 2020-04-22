create database GEIP

use GEIP

create table UsuarioLectura(
id int primary key not null identity(1,1),
nombre varchar(100)
);

create table Alumnos(
Matricula int not null primary key,
Nombres varchar(50),
ApellidoPaterno varchar(20),
ApellidoMaterno varchar(20),
Edad int,
Correo varchar(100),
Contacto varchar(100),
Contrasena varchar(50),
Carrera int foreign key references Carrera(id)
);

create table Carrera(
id int not null primary key identity(1,1),
carrera varchar(100)
);

create table Administrativo(
id int not null primary key identity(1,1),
Nombre varchar(100),
Correo varchar(100),
Contrasena varchar(100),
Contacto varchar(100),
Area varchar(50),
Tipo varchar(50)
);

create table rel_AlumnoProyecto(
id_proyecto int foreign key references Proyectos(id_proyecto),
Matricula int foreign key references Alumnos(Matricula)
);

create table Proyectos(
id_proyecto int not null primary key identity(1,1),
Nombre varchar(100),
Descripcion varchar(500),
Tipo int foreign key references TiposProyectos(id),
Clasificacion int foreign key references cat_Clasificaciones(id),
Avance int,
Programa int foreign key references cat_Programas(id),
Cuatrimestre int,
Fecha varchar(100),
Convocatoria varchar(200),
Recursos varchar(300),
EstadoAdmin int foreign key references cat_EstadoAdmin(id),
Estado int,
JustificionInactividad varchar(300),
Asesor int foreign key references Administrativo(id),
); 

create table relProyectoCat_Impacto(
id_proyecto int foreign key references Proyectos(id_proyecto),
id_materia int foreign key references cat_Impacto(id)
);

create table cat_Impacto(
id int not null primary key identity(1,1),
Nombre varchar(100)
);

create table TiposProyectos(
id int not null primary key identity(1,1),
Nombre varchar(100) 
);

create table cat_Clasificaciones(
id int not null primary key identity(1,1),
Nombre varchar(100) 
);

create table cat_Programas(
id int not null primary key identity(1,1),
Nombre varchar(100) 
);

------INSERTAR A TABLAS-------

insert into Administrativo values('Admin', 'admin@gmail.com', '123123', 'admin@gmail.com', '', 'Administrador');

-----SELECTS-----
select * from Alumnos
select * from cat_Carreras
select * from Administrativo
select * from cat_Impacto
select * from cat_Programas
select * from cat_Clasificaciones
select * from Proyectos
Select * from rel_AlumnoProyecto
select * from relProyectoCat_Impacto
Select * from UsuarioLectura
----TRUNCATE-----
