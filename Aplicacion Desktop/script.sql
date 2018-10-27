--Me conecto a la base de datos a usar
USE [GD2C2018]
GO
----------------------------------------------------------------------------------------------
								/** CREACION DE SCHEMA **/
----------------------------------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dropeadores')
BEGIN
    EXEC ('CREATE SCHEMA dropeadores AUTHORIZATION gdEspectaculos2018')
END
GO


----------------------------------------------------------------------------------------------
								/** FIN CREACION DE SCHEMA**/
----------------------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------
								/** VALIDACION DE TABLAS **/
----------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.FuncionalidadXRol'))
    DROP TABLE dropeadores.FuncionalidadXRol

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.RolXUsuario'))
    DROP TABLE dropeadores.RolXUsuario
        
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Funcionalidad'))
    DROP TABLE dropeadores.Funcionalidad

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Rol'))
    DROP TABLE dropeadores.Rol

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.TarjetaCliente'))
    DROP TABLE dropeadores.TarjetaCliente

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.ClienteFrecuente'))
    DROP TABLE dropeadores.ClienteFrecuente

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.ItemFactura'))
    DROP TABLE dropeadores.ItemFactura

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Factura'))
    DROP TABLE dropeadores.Factura

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Rubro'))
    DROP TABLE dropeadores.Rubro

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Grado'))
    DROP TABLE dropeadores.Grado

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Publicacion'))
    DROP TABLE dropeadores.Publicacion

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Compra'))
    DROP TABLE dropeadores.Compra

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Cliente'))
    DROP TABLE dropeadores.Cliente

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Empresa'))
    DROP TABLE dropeadores.Empresa

----------------------------------------------------------------------------------------------
							/** FIN VALIDACION DE TABLAS **/
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
							/** VALIDACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
							/** FIN VALIDACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
							/** INICIO CREACION DE TABLAS **/
----------------------------------------------------------------------------------------------

create table [dropeadores].Funcionalidad(
Id int primary key identity,
descripcion nvarchar(255) not null,
)


create table [dropeadores].Rol(
Id int primary key identity,
nombre nvarchar(255) not null,
estado bit default 1
)


create table [dropeadores].FuncionalidadXRol(
Id int primary key identity,
rolId int not null references [dropeadores].Rol,
funcionalidadId int not null references [dropeadores].Funcionalidad ,
)

create table [dropeadores].Usuario(
Id int primary key identity,
username varchar(255) unique not null,
password varchar(255) not null,
estado int default 1,
intentos int default 0,
)

create table [dropeadores].RolXUsuario(
Id int primary key identity,
usuarioId int not null references [dropeadores].Usuario,
rolId int not null references [dropeadores].Rol,
)


-----------------------------------------------------------------------------------------------------
										/* FIN DE CREACION DE TABLAS*/
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
										/* INICIO DE CARGA DE DATOS */
-----------------------------------------------------------------------------------------------------

--Existen dos tipos de roles Administradores y Cobradores
					/*Rol*/
go
insert into [dropeadores].Rol (nombre) values
('Empresa'), 
('Administrativo'),
('Cliente');

					/*Funcionalidad*/
go
insert into dropeadores.Funcionalidad (descripcion) values
('Registro de Usuarios'),
('ABM de Rol'),
('ABM de Clientes'),
('ABM de Empresas'),
('ABM de Rubro'),
('ABM de Grado de Publicacion'),
('Generar Publicacion'),
('Editar Publicacion'),
('Comprar'),
('Historial de Cliente'),
('Canje y Administracion de puntos'),
('Generar rendicion de comisiones'),
('Facturar Publicaciones');

					/*RolXFuncionalidad*/

go
insert into [dropeadores].FuncionalidadXRol (rolId, funcionalidadId) values
(1,1), (3,1), (2,2),(2,3),(2,4),(3,5),(3,6),(1,7),(1,8),(3,9),(3,10),(3,11),(2,12),(1,13),(2,13),(3,13);


					/*Usuarios*/


/*usuarios creados por el grupo*/ 
go
insert into dropeadores.Usuario (username, password) values 
	('admin',HASHBYTES('SHA2_256','w23e'))
insert into dropeadores.Usuario (username,password) values
	('cliente',HASHBYTES('SHA2_256','cliente'))
insert into dropeadores.Usuario (username,password) values
	('empresa',HASHBYTES('SHA2_256','empresa'))

-- 					/*Localidad*/
-- go
-- insert into dropeadores.Localidad (localidad_nombre,localidad_provincia,localidad_pais)
-- values ('Capital Federal','Buenos Aires','Argentina')


					/*UsuariosXRoles*/
/*usuariosXRoles*/
insert into dropeadores.RolXUsuario (usuarioId, rolId) values
	(1,1),(1,2),(1,3),(2,3),(3,1);
