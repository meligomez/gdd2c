--Me conecto a la base de datos a usar
USE [GD2C2018]
GO

IF EXISTS (SELECT * FROM sys.schemas WHERE name = 'DROPEADORES')
    DROP SCHEMA DROPEADORES
GO
----------------------------------------------------------------------------------------------
								/** CREACION DE SCHEMA **/
----------------------------------------------------------------------------------------------
CREATE SCHEMA [DROPEADORES] AUTHORIZATION [gdEspectaculos2018]
GO

----------------------------------------------------------------------------------------------
								/** FIN CREACION DE SCHEMA**/
----------------------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------
								/** VALIDACION DE TABLAS **/
----------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.FuncionalidadXRol'))
    DROP TABLE DROPEADORES.FuncionalidadXRol

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.RolXUsuario'))
    DROP TABLE DROPEADORES.RolXUsuario
        
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Funcionalidad'))
    DROP TABLE DROPEADORES.Funcionalidad

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Rol'))
    DROP TABLE DROPEADORES.Rol

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.TarjetaCliente'))
    DROP TABLE DROPEADORES.TarjetaCliente

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.ClienteFrecuente'))
    DROP TABLE DROPEADORES.ClienteFrecuente

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.ItemFactura'))
    DROP TABLE DROPEADORES.ItemFactura

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Factura'))
    DROP TABLE DROPEADORES.Factura

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Rubro'))
    DROP TABLE DROPEADORES.Rubro

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Grado'))
    DROP TABLE DROPEADORES.Grado

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Publicacion'))
    DROP TABLE DROPEADORES.Publicacion

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Compra'))
    DROP TABLE DROPEADORES.Compra

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Cliente'))
    DROP TABLE DROPEADORES.Cliente

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Empresa'))
    DROP TABLE DROPEADORES.Empresa

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Empresa_Domicilio'))
    DROP TABLE DROPEADORES.Empresa_Domicilio

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'DROPEADORES.Usuario'))
    DROP TABLE DROPEADORES.Usuario


----------------------------------------------------------------------------------------------
							/** FIN VALIDACION DE TABLAS **/
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
							/** VALIDACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------
IF EXISTS (SELECT name FROM sysobjects WHERE name='login' AND type='p')
	DROP PROCEDURE [DROPEADORES].login
GO

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Empresa_Alta')
	DROP PROCEDURE DROPEADORES.Empresa_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Domicilio_empresa_Alta')
	DROP PROCEDURE DROPEADORES.Domicilio_empresa_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='DireEmp_ObtenerId')
	DROP PROCEDURE DROPEADORES.DireEmp_ObtenerId 

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Usuario_Alta_Empresa')
	DROP PROCEDURE DROPEADORES.Usuario_Alta_Empresa

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Cli_Alta')
	DROP PROCEDURE DROPEADORES.Cli_Alta
GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Cli_ObtenerId')
	DROP PROCEDURE DROPEADORES.Cli_ObtenerId

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='DireCli_ObtenerId')
	DROP PROCEDURE DROPEADORES.DireCli_ObtenerId

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Domicilio_Cli_Alta')
	DROP PROCEDURE DROPEADORES.Domicilio_Cli_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='obtenerUsuarioByUsername')
	DROP PROCEDURE DROPEADORES.obtenerUsuarioByUsername

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='pasarAInhabilitado')
	DROP PROCEDURE DROPEADORES.pasarAInhabilitado

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Usuario_Alta')
	DROP PROCEDURE DROPEADORES.Usuario_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Usuario_UpdatePsw')
	DROP PROCEDURE DROPEADORES.Usuario_UpdatePsw

----------------------------------------------------------------------------------------------
							/** FIN VALIDACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
							/** INICIO DE CREACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------

/**********************LOGIN********************* */
go	
CREATE PROCEDURE [DROPEADORES].login(@user VARCHAR(100), @pass varchar(100), @ret smallint output)
AS 
BEGIN

  IF EXISTS( SELECT 1 FROM [DROPEADORES].Usuario   WHERE username = @user )
  
     BEGIN

	    IF ( SELECT password FROM DROPEADORES.Usuario WHERE username = @user and estado=1) = HASHBYTES('SHA2_256', @pass)
		    BEGIN
			  UPDATE DROPEADORES.Usuario
              SET intentos = 0
              WHERE username = @user
				set @ret = 0 -- user + psw correctos
			END
           
		ELSE
			IF((select intentos from DROPEADORES.Usuario where username=@user and estado=1) < 3)
				BEGIN 

					UPDATE DROPEADORES.Usuario
					SET intentos =intentos + 1
					WHERE username = @user
					SET @ret = -3 -- suma intentos fallidos
		       END
		   ELSE
			   BEGIN
				   UPDATE DROPEADORES.Usuario
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
CREATE procedure [DROPEADORES].[obtenerUsuarioByUsername]
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
CREATE procedure [DROPEADORES].[Empresa_Alta] 
(@Cuit nvarchar(255), @mail varchar(255),@telefono numeric(10,0),@Razon_social varchar(255), @domicilio int)
as
begin
insert into  GDGD2C2018.[DROPEADORES].Empresa (empresa_Cuit, empresa_mail,empresa_telefono,empresa_razon_social,empresa_domicilio)
 values (@Cuit, @mail,@telefono,@Razon_social,@domicilio)
end
/****************FIN Realiza el alta de una empresa**********/
/*
*********************Realiza el alta de un Domicilio de una empresa *********************
*/
GO
CREATE procedure [DROPEADORES].[Domicilio_empresa_Alta] (@calle nvarchar(50), @numero numeric(18,0),@piso numeric(18,0),@depto nvarchar(50),@localidad nvarchar(50),@cp nvarchar(50),@ciudad nvarchar(50))
as
begin
insert into [DROPEADORES].Empresa_Domicilio(Emp_Dom_Calle,Emp_Nro_Calle,Emp_Piso,Emp_Depto,Emp_Localidad,Emp_Cod_Postal,Emp_Ciudad)
values (@calle,@numero,@piso,@depto,@localidad,@cp,@ciudad)
end
/****************FIN Realiza el alta de un Domicilio de una empresa**********/

/*
*********************Busca el ID de tal empresa *********************
*/
GO
Create procedure [DROPEADORES].[DireEmp_ObtenerId]
as
begin
Select Max(Id_Empresa)as'Id'from [DROPEADORES].Empresa_Domicilio
end
/****************FIN Busca el ID de tal empresa**********/

/*
*********************Realiza El alta de usuario con la empresa correspondiente *********************
*/
GO
Alter procedure [DROPEADORES].[Usuario_Alta_Empresa] (@CuitEmpresa nvarchar(255), @user nvarchar(255),@password nvarchar(255))
as
begin
insert into DROPEADORES.Usuario(username,password,CuitEmpresa)
values (@user,@password,@CuitEmpresa)
end
/****************FIN Realiza El alta de usuario con la empresa correspondiente**********/


/*
*********************Busca un usuario por su username*********************
*/
go
CREATE procedure [DROPEADORES].[obtenerUsuarioByUsername]
@usname nvarchar(255)
as
select 
u.username,
u.password,
u.estado,	
u.cambioPsw,
u.creadoPor
from DROPEADORES.Usuario u where u.username=@usname and u.estado=1
/****************FIN Busca un usuario por su username**********/


/**************Usuario pedido*****************/
go
Create procedure [DROPEADORES].[Emp_ObtenerId]
as
begin

Select Max(empresa_Cuit)as'Id'from DROPEADORES.Empresa

--select @id = scope_identity()[pero_compila].[Rol]
end

/****************FIN Usuario pedido**********/

/**************ALTA DE UN CLIENTE*****************/
GO
CREATE procedure [DROPEADORES].[Cli_Alta] 
(@nombre varchar(255), @apellido varchar(255),@dni numeric(10,0),@mail nvarchar(255),@fechaNac datetime,@cuil int,@telefono int,@idDireccion int )
as
begin
	declare @id int
	insert into dbo.Clientes (Cli_Nombre, Cli_Apeliido,Cli_Dni,Cli_Mail,Cli_Fecha_Nac,Cli_Cuil,Cli_Telefono,Cli_Direccion)
	values(@nombre, @apellido,@dni,@mail,@fechaNac,@cuil,@telefono,@idDireccion)
	
	Select Max(Id_Cliente)as'Id' from dbo.Clientes
end

/**************FIN DE ALTA DE CLIENTE*****************/


/**************BUSCAR ULTIMO ID INSERTADO CLIENTE*****************/
GO
CREATE procedure [DROPEADORES].[Cli_ObtenerId]
as
begin
	
	Select Max(Id_Cliente)as'Id'from dbo.Clientes
end

/**************FIN DE BUSCAR ULTIMO ID INSERTADO*****************/

/**************BUSCAR ULTIMO ID INSERTADO DIRECCION*****************/
GO
ALTER procedure [DROPEADORES].[DireCli_ObtenerId]
as
begin
	
	Select Max(Cli_Dir_Id)as'Id'from dbo.Clientes_direccion
end

/**************BUSCAR ULTIMO ID INSERTADO DIRECCION*****************/

/**************CREAR DOMICILIO DE CLIENTE*****************/
GO
CREATE procedure [DROPEADORES].[Domicilio_Cli_Alta] (@calle nvarchar(255), @numero int,@piso int,@depto nvarchar(5),@localidad nvarchar(255),@cp int)
as
begin
insert into dbo.Clientes_Direccion(Cli_Dom_Calle,Cli_Nro_Calle,Cli_Piso,Cli_Depto,Cli_Localidad,Cli_Cod_Postal)values
(@calle,@numero,@piso,@depto,@localidad,@cp)

end
/**************FIN DE CREAR DOMICILIO CLIENTE*****************/

/**************PASAR USUARIO A INHABILITADO*****************/
GO
CREATE procedure [DROPEADORES].[pasarAInhabilitado] (@user nvarchar(255))
as
begin
update DROPEADORES.Usuario set estado=0 where username=@user
end
/**************FIN PASAR USUARIO A INHABILITADO*****************/

/**************ALTA DE USUARIO*****************/
GO
CREATE procedure [DROPEADORES].[Usuario_Alta] (@idCliente int, @user nvarchar(255),@password nvarchar(255),@fechaCreacion datetime,@creadoPor nvarchar(255))
as
begin
insert into DROPEADORES.Usuario(username,password,clienteId,fechaPassword,creadoPor)values
(@user,@password,@idCliente,@fechaCreacion,@creadoPor)
end
/**************FIN ALTA DE USUARIO*****************/

/**************CAMBIAR PSW POR DEFECTO*****************/
GO
CREATE procedure [DROPEADORES].[Usuario_UpdatePsw]
(@username nvarchar(255), @passNueva nvarchar(255))
as
begin
update DROPEADORES.Usuario set password=@passNueva, cambioPsw=1 where username=@username and estado=1
end
/**************FIN CAMBIAR PSW POR DEFECTO*****************/


/**************Obtener nombre de roles*****************/
GO
CREATE procedure [DROPEADORES].obtenerRolByName
(@nombrerol nvarchar(255))
as
begin
select * from DROPEADORES.Rol where nombre=@nombrerol
end
/****************************************************/

/**************ALTA DE ROL*****************/
GO
CREATE procedure DROPEADORES.Alta_Rol
(@nombrerol nvarchar(255))
as
begin
insert into DROPEADORES.Rol (nombre) values (@nombreRol)
end
/****************************************/

/*************OBTENER ULTIMO ID INSERTADO DEL ROL*****************/
GO
CREATE procedure DROPEADORES.Rol_ObtenerId
as
begin
	Select Max(Id_Rol)as'Id'from DROPEADORES.Rol
end
/****************************************/

/*************INSERTAR UN ROL X FUNCIONALIDAD*****************/
GO
CREATE procedure DROPEADORES.AltaRolPorFuncionalidad
(@idRol int,@idFunc int)
as
begin
	insert into DROPEADORES.FuncionalidadXRol (rolId,funcionalidadId) values (@idRol,@idFunc)
end
/**************************************************************/


----------------------------------------------------------------------------------------------
							/** FIN DE CREACION DE PROCEDURES **/
----------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
							/** INICIO CREACION DE TABLAS **/
----------------------------------------------------------------------------------------------

create table [DROPEADORES].Funcionalidad(
Id_Funcionalidad int primary key identity,
descripcion nvarchar(255) not null,
)


create table [DROPEADORES].Rol(
Id_Rol int primary key identity,
nombre nvarchar(255) not null,
estado bit default 1
)


create table [DROPEADORES].FuncionalidadXRol(
Id_fxr int primary key identity,
rolId int not null references [DROPEADORES].Rol,
funcionalidadId int not null references [DROPEADORES].Funcionalidad ,
)

Create table [DROPEADORES].Usuario (
Id int primary key identity,
username nvarchar(255) unique not null,
password nvarchar(255) not null,
cambioPsw int default 0,
creadoPor nvarchar(255),
estado  int default 1,
intentos int default 0,
clienteId int,
CuitEmpresa nvarchar(255),
Baja bit default 1,
Fecha_Password datetime,
)

create table [DROPEADORES].RolXUsuario(
Id_rxu int primary key identity,
usuarioId int not null references [DROPEADORES].Usuario,
rolId int not null references [DROPEADORES].Rol,
)

create table [DROPEADORES].Empresa (
empresa_Cuit varchar(255) primary key,
empresa_mail nvarchar(255),
empresa_telefono numeric(10,0),
empresa_razon_social  nvarchar(255),
empresa_domicilio int,
empresa_estado bit default 1
)

Create table [DROPEADORES].Empresa_Domicilio (
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
insert into DROPEADORES.Rol (nombre) values
('Empresa'), 
('Administrativo'),
('Cliente');

					/*Funcionalidad*/
go
insert into DROPEADORES.Funcionalidad (descripcion) values
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
insert into [DROPEADORES].FuncionalidadXRol (rolId, funcionalidadId) values
(1,1), (3,1), (2,2),(2,3),(2,4),(3,5),(3,6),(1,7),(1,8),(3,9),(3,10),(3,11),(2,12),(1,13),(2,13),(3,13);


					/*Usuarios*/


/*usuarios creados por el grupo*/ 
go
insert into DROPEADORES.Usuario (username, password) values 
	('admin',HASHBYTES('SHA2_256','w23e'))
insert into DROPEADORES.Usuario (username,password) values
	('cliente',HASHBYTES('SHA2_256','cliente'))
insert into DROPEADORES.Usuario (username,password) values
	('empresa',HASHBYTES('SHA2_256','empresa'))

-- 					/*Localidad*/
-- go
-- insert into DROPEADORES.Localidad (localidad_nombre,localidad_provincia,localidad_pais)
-- values ('Capital Federal','Buenos Aires','Argentina')


					/*UsuariosXRoles*/
/*usuariosXRoles*/
insert into DROPEADORES.RolXUsuario (usuarioId, rolId) values
	(1,1),(1,2),(1,3),(2,3),(3,1);

					/*Empresa*/
insert into [DROPEADORES].Empresa (empresa_Cuit,empresa_mail,empresa_razon_social)
select distinct Espec_Empresa_Cuit,Espec_Empresa_Mail,Espec_Empresa_Razon_Social
from gd_esquema.Maestra m 

					/*Domicilio de la Empresa*/
insert into [DROPEADORES].Empresa_Domicilio (Emp_Dom_Calle,Emp_Nro_Calle,Emp_Cod_Postal,Emp_Depto,Emp_Piso)
select distinct Espec_Empresa_Dom_Calle,Espec_Empresa_Nro_Calle,Espec_Empresa_Cod_Postal, Espec_Empresa_Depto,Espec_Empresa_Piso
from gd_esquema.Maestra m 