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

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Empresa_Domicilio'))
    DROP TABLE dropeadores.Empresa_Domicilio

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dropeadores.Usuario'))
    DROP TABLE dropeadores.Usuario


----------------------------------------------------------------------------------------------
							/** FIN VALIDACION DE TABLAS **/
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
							/** VALIDACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects WHERE name='login' AND type='p')
	DROP PROCEDURE [dropeadores].login
GO

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Empresa_Alta')
	DROP PROCEDURE dropeadores.Empresa_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Domicilio_empresa_Alta')
	DROP PROCEDURE dropeadores.Domicilio_empresa_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='DireEmp_ObtenerId')
	DROP PROCEDURE dropeadores.DireEmp_ObtenerId 

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Usuario_Alta_Empresa')
	DROP PROCEDURE dropeadores.Usuario_Alta_Empresa

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

/*
*********************Realiza el alta de una empresa *********************
*/
GO
CREATE procedure [dropeadores].[Empresa_Alta] 
(@Cuit nvarchar(255), @mail varchar(255),@telefono numeric(10,0),@Razon_social varchar(255), @domicilio int)
as
begin
insert into  GDGD2C2018.[dropeadores].Empresa (empresa_Cuit, empresa_mail,empresa_telefono,empresa_razon_social,empresa_domicilio)
 values (@Cuit, @mail,@telefono,@Razon_social,@domicilio)
end
/****************FIN Realiza el alta de una empresa**********/
/*
*********************Realiza el alta de un Domicilio de una empresa *********************
*/
GO
CREATE procedure [dropeadores].[Domicilio_empresa_Alta] (@calle nvarchar(50), @numero numeric(18,0),@piso numeric(18,0),@depto nvarchar(50),@localidad nvarchar(50),@cp nvarchar(50),@ciudad nvarchar(50))
as
begin
insert into [dropeadores].Empresa_Domicilio(Emp_Dom_Calle,Emp_Nro_Calle,Emp_Piso,Emp_Depto,Emp_Localidad,Emp_Cod_Postal,Emp_Ciudad)
values (@calle,@numero,@piso,@depto,@localidad,@cp,@ciudad)
end
/****************FIN Realiza el alta de un Domicilio de una empresa**********/

/*
*********************Busca el ID de tal empresa *********************
*/
GO
Create procedure [dropeadores].[DireEmp_ObtenerId]
as
begin
Select Max(Id_Empresa)as'Id'from [dropeadores].Empresa_Domicilio
end
/****************FIN Busca el ID de tal empresa**********/

/*
*********************Realiza El alta de usuario con la empresa correspondiente *********************
*/
GO
Alter procedure [dropeadores].[Usuario_Alta_Empresa] (@CuitEmpresa nvarchar(255), @user nvarchar(255),@password nvarchar(255))
as
begin
insert into dropeadores.Usuario(username,password,CuitEmpresa)
values (@user,@password,@CuitEmpresa)
end
/****************FIN Realiza El alta de usuario con la empresa correspondiente**********/


/*
*********************Busca un usuario por su username*********************
*/
go
CREATE procedure [dbo].[obtenerUsuarioByUsername]
@usname nvarchar(255)
as
select 
u.username,
u.password,
u.estado,	
u.cambioPsw,
u.creadoPor
from dropeadores.Usuario u where u.username=@usname and u.estado=1
/****************FIN Busca un usuario por su username**********/


/**************Usuario pedido*****************/
go
Create procedure [dropeadores].[Emp_ObtenerId]
as
begin

Select Max(empresa_Cuit)as'Id'from dropeadores.Empresa

--select @id = scope_identity()[pero_compila].[Rol]
end

/****************FIN Usuario pedido**********/


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

Create table [dropeadores].Usuario (
Id int primary key identity,
username varchar(255) unique not null,
password varchar(255) not null,
estado  int default 1,
intentos int default 0,
clienteId int,
CuitEmpresa nvarchar(255),
Baja bit default 1,
Fecha_Password datetime,
)

create table [dropeadores].RolXUsuario(
Id_rxu int primary key identity,
usuarioId int not null references [dropeadores].Usuario,
rolId int not null references [dropeadores].Rol,
)

create table [dropeadores].Empresa (
empresa_Cuit varchar(255) primary key,
empresa_mail nvarchar(255),
empresa_telefono numeric(10,0),
empresa_razon_social  nvarchar(255),
empresa_domicilio int,
empresa_estado bit default 1
)

Create table [dropeadores].Empresa_Domicilio (
Id_Empresa int primary key identity,
Emp_Dom_Calle nvarchar(50),
Emp_Nro_Calle numeric(18,0),
Emp_Cod_Postal  nvarchar(50),
Emp_Depto nvarchar(50),
Emp_Localidad nvarchar(50),
Emp_Ciudad nvarchar(50),
Emp_Piso numeric(18,0),
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

					/*Empresa*/
insert into [dropeadores].Empresa (empresa_Cuit,empresa_mail,empresa_razon_social)
select distinct Espec_Empresa_Cuit,Espec_Empresa_Mail,Espec_Empresa_Razon_Social
from gd_esquema.Maestra m 

					/*Domicilio de la Empresa*/
insert into [dropeadores].Empresa_Domicilio (Emp_Dom_Calle,Emp_Nro_Calle,Emp_Cod_Postal,Emp_Depto,Emp_Piso)
select distinct Espec_Empresa_Dom_Calle,Espec_Empresa_Nro_Calle,Espec_Empresa_Cod_Postal, Espec_Empresa_Depto,Espec_Empresa_Piso
from gd_esquema.Maestra m 