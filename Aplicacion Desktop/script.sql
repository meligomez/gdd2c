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
IF EXISTS (SELECT name FROM sysobjects WHERE name='login' AND type='p')
	DROP PROCEDURE [dropeadores].login
GO

----------------------------------------------------------------------------------------------
							/** FIN VALIDACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
							/** INICIO DE CREACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------

/**********************LOGIN********************* */
go	
CREATE PROCEDURE [dropeadores].[login](@user VARCHAR(100), @pass varchar(100), @ret smallint output)
AS 
BEGIN

  IF EXISTS( SELECT 1 FROM dropeadores.Usuario   WHERE username = @user )
  
     BEGIN

	    IF ( SELECT password FROM dropeadores.Usuario WHERE username = @user and estado=1) = HASHBYTES('SHA2_256', @pass)
		    BEGIN
			  UPDATE dropeadores.Usuario
              SET intentos = 0
              WHERE username = @user
				set @ret = 0 -- user + psw correctos
			END
           
		ELSE
			IF((select intentos from dropeadores.Usuario where username=@user and estado=1) < 3)
				BEGIN 

					UPDATE dropeadores.Usuario
					SET intentos =intentos + 1
					WHERE username = @user
					SET @ret = -3 -- suma intentos fallidos
		       END
		   ELSE
			   BEGIN
				   UPDATE dropeadores.Usuario
				   --SET ACTIVO = 0
					set intentos = 3
				   WHERE username = @user
				  -- AND usuario_intentos = 3
		   
				   SET @ret = -2 -- fallo en los intentos de login
		   
			   END
      END

   ELSE
		SET @ret= -1 -- no esta activo y usuario incorrecto
RETURN
END

   
/**********************FIN LOGIN **********************/



/***************Buscar Usuario por username**********/


GO 
CREATE procedure [dropeadores].[obtenerUsuarioByUsername]
@usname nvarchar(255)
as
select u.username,u.password,u.estado,u.intentos 
from Usuario u where u.username=@usname
GO

/****************FIN Buscar Usuario por username**********/
----------------------------------------------------------------------------------------------
							/** FIN DE CREACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
							/** INICIO CREACION DE TABLAS **/
----------------------------------------------------------------------------------------------

create table [dropeadores].Funcionalidad(
Id_Funcionalidad int primary key identity,
descripcion nvarchar(255) not null,
)


create table [dropeadores].Rol(
Id_Rol int primary key identity,
nombre nvarchar(255) not null,
estado bit default 1
)


create table [dropeadores].FuncionalidadXRol(
Id_fxr int primary key identity,
rolId int not null references [dropeadores].Rol,
funcionalidadId int not null references [dropeadores].Funcionalidad ,
)

create table [dropeadores].Usuario(
Id_Usuario int primary key identity,
username varchar(255) unique not null,
password varchar(255) not null,
estado int default 1,
intentos int default 0,
)

create table [dropeadores].RolXUsuario(
Id_rxu int primary key identity,
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
