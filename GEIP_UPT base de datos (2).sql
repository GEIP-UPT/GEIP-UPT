create database GEIPUPT


use GEIPUPT

create table DatosProyecto(
id_proyecto int primary key identity(1,1),
nombre_proyecto varchar(500),
tipo varchar(100),
clasificacion varchar(100),
avance varchar(100),
programa varchar(100),
asesor varchar(100),
cuatrimestre varchar(50),
impacto varchar(100),
finalizacion date,
participado_antes varchar(50),
recursos_elaborar varchar(100),
descripcion varchar(500),
Integrantes varchar(400),
Edades varchar(30),
contactoLider varchar(40)
)

create proc insertar_proyecto
@nombre_proyecto varchar(500),
@tipo varchar(100),
@clasificacion varchar(100),
@avance varchar(100),
@programa varchar(100),
@asesor varchar(100),
@cuatrimestre varchar(50),
@impacto varchar(100),
@finalizacion date,
@participado_antes varchar(50),
@recursos_elaborar varchar(100),
@descripcion varchar(500),
@integrantes varchar(400),
@edades varchar(30),
@contactolider varchar(40)
as
insert into DatosProyecto values(@nombre_proyecto,@tipo,@clasificacion,@avance,@programa,@asesor,@cuatrimestre,@impacto,@finalizacion,@participado_antes,@recursos_elaborar,@descripcion,@integrantes,@edades,@contactolider)
select * from DatosProyecto
create proc eliminar_proyecto
@nombre_proyecto varchar(500)
as 
delete from DatosProyecto where @nombre_proyecto=nombre_proyecto

create proc actualizar_proyecto
@id int,
@nombre_proyecto varchar(500),
@tipo varchar(100),
@clasificacion varchar(100),
@avance varchar(100),
@programa varchar(100),
@asesor varchar(100),
@cuatrimestre varchar(50),
@impacto varchar(100),
@finalizacion date,
@participado_antes varchar(50),
@recursos_elaborar varchar(100),
@descripcion varchar(500),
@integrantes varchar(400),
@edades varchar(30),
@contactolider varchar(40)
as
update DatosProyecto set nombre_proyecto=@nombre_proyecto, tipo=@tipo,clasificacion=@clasificacion,avance=@avance,programa=@programa,
asesor=@asesor,cuatrimestre=@cuatrimestre,
impacto=@impacto,finalizacion=@finalizacion,participado_antes=@participado_antes,
recursos_elaborar=@recursos_elaborar,
descripcion=@descripcion,
integrantes=@integrantes,edades=@edades, @contactoLider=contactolider where id_proyecto=@id


create table ProyectosInactivos(
Numero int NOT NULL identity (1,1),
Nombre  varchar (50),
Lider varchar (50),
Asesor varchar (50),
Avance int,
Tipo varchar (50),
Clasificacion varchar (50),
Edades int,
ContactoAsesor varchar (50),
Descripcion varchar (50),
RazonInactividad varchar (100)
)


create proc insertar_ProyectosInactivos
@Nombre varchar (50),
@Lider varchar (50),
@Asesor varchar (50),
@Avance int,
@Tipo varchar (50),
@Clasificacion varchar (50),
@Edades int,
@ContactoAsesor varchar (50),
@Descripcion varchar (50),
@RazonInactividad varchar (100)
as
insert ProyectosInactivos values(@Nombre,@Lider,@Asesor,@Avance,@Tipo,@Clasificacion,@Edades,@ContactoAsesor,@Descripcion,@RazonInactividad)



create table DatosAsesor(
id_asesor int primary key identity(1,1),
Asesor varchar (50),
Proyecto varchar (50),
Contacto varchar (50),
area varchar (50)
)
drop table DatosAsesor


create proc insertar_datos_asesor
@Asesor varchar (50),
@Proyecto varchar (50),
@Contacto varchar (50),
@area varchar (50)
as
insert into DatosAsesor values(@Asesor,@Proyecto,@Contacto,@area)

create proc actualizar_asesor
@id int,
@Asesor varchar (50),
@Proyecto varchar (50),
@Contacto varchar (50),
@area varchar (50)
as
update DatosAsesor set Asesor=@Asesor,Proyecto=@Proyecto,Contacto=@Contacto,area=@area where id_asesor=@id

create proc eliminar_asesor
@id int
as
delete from DatosAsesor where id_asesor=@id


create table RegistroAlumno(
id integer primary key identity(1,1), 
Nombre varchar (50),
ApellidoPaterno varchar (50),
ApellidoMaterno varchar (50),
Edad int,
Correo varchar (50),
Contrasena varchar (50),
Matricula varchar(50),
Carrera varchar (50),
tipo varchar(50)
)

create proc insertar_alumno 
@Nombre varchar(50),
@ApellidoPaterno varchar (50),
@ApellidoMaterno varchar (50),
@Edad int,
@Correo varchar (50),
@Contrasena varchar (50),
@Matricula varchar(50),
@Carrera varchar (50),
@tipo varchar(50)
as
insert into RegistroAlumno values(@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Edad,@Correo,@Contrasena,@Matricula,@Carrera,@tipo)

create proc eliminar_persona
@id int
as
delete from RegistroAlumno where id=@id

create proc actualizar_persona
@id int,
@Nombre varchar(50),
@ApellidoPaterno varchar (50),
@ApellidoMaterno varchar (50),
@Edad int,
@Correo varchar (50),
@Contrasena varchar (50),
@Matricula varchar(50),
@Carrera varchar (50),
@tipo varchar(50)
as
update RegistroAlumno set Nombre=@Nombre, ApellidoPaterno=@ApellidoPaterno,ApellidoMaterno=@ApellidoMaterno,Edad=@Edad,Correo=@Correo,Contrasena=@Contrasena,Matricula=@Matricula,Carrera=@Carrera,tipo=@tipo where id=@id

create table tipos(
tipo_proyecto varchar(100)
)

create table programa(
programa varchar(100)
)
create table clasificacion(
clasificacion varchar(50)
)

select * from clasificacion
create proc insertar_tipo
@tipo_proyecto varchar(100)
as
insert into tipos values(@tipo_proyecto)


create proc insertar_programa
@tipo_programa varchar(100)
as
insert into programa values(@tipo_programa)

create proc insertar_clasificacion
@tipo_clasificacion varchar(100)
as
insert into clasificacion values(@tipo_clasificacion)


exec insertar_programa 'Ingenieria en Robotica'
exec insertar_programa 'Ingenieria Civil'
exec insertar_programa 'Ingenieria Industrial'
exec insertar_programa 'Ingenieria en Sistemas Computacionales'
exec insertar_programa 'Ingenieria en Tecnologias de Manufactura'
exec insertar_programa 'Ingenieria en Electronica y Telecomunicaciones'
exec insertar_programa 'Licenciatura en Gestion de PYMES'
exec insertar_programa 'Licenciatura en Negocios Internacionales'
exec insertar_programa 'Maestria en energias renovables'
exec insertar_programa 'Maestría en Computación Óptica'
exec insertar_programa 'Maestría en Dirección de Organizaciones'


exec insertar_clasificacion'Biotecnología-Ciencias Agropecuarias'
exec insertar_clasificacion'Humanidades-Ciencias de la Conducta'
exec insertar_clasificacion'Ingenierías-Industria'

exec insertar_tipo 'Tecnologico'
exec insertar_tipo 'Servicio'

create table materiasImpacto(
materia varchar(50)
);
