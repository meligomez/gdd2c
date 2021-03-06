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

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Cli_Alta')
	DROP PROCEDURE dropeadores.Cli_Alta
GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Cli_ObtenerId')
	DROP PROCEDURE dropeadores.Cli_ObtenerId

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='DireCli_ObtenerId')
	DROP PROCEDURE dropeadores.DireCli_ObtenerId

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Domicilio_Cli_Alta')
	DROP PROCEDURE dropeadores.Domicilio_Cli_Alta

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='obtenerUsuarioByUsername')
	DROP PROCEDURE dropeadores.obtenerUsuarioByUsername

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='pasarAInhabilitado')
	DROP PROCEDURE dropeadores.pasarAInhabilitado

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Usuario_Alta')
	DROP PROCEDURE dropeadores.Usuario_Alta}

GO
IF EXISTS (SELECT name FROM sysobjects WHERE name='Usuario_UpdatePsw')
	DROP PROCEDURE dropeadores.Usuario_UpdatePsw

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
(@Cuit nvarchar(255), @mail varchar(255),@telefono numeric(10,0),@Razon_social varchar(255),@id_Domicilio int)
as
begin
insert into  GD2C2018.[dropeadores].Empresa (empresa_Cuit, empresa_mail,empresa_telefono,empresa_razon_social,empresa_domicilio,empresa_estado)
 values (@Cuit, @mail,@telefono,@Razon_social,@id_Domicilio,0)
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
*********************Realiza el alta de un Domicilio de un cliente *********************
*/

USE [GD2C2018]
GO
/****** Object:  StoredProcedure [dropeadores].[Cli_Alta]    Script Date: 07/12/2018 18:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dropeadores].[Cli_Alta] 
(@nombre nvarchar(255),@apellido nvarchar(255),@tipoDoc nvarchar(50),@dni numeric(18,0), @mail varchar(255),@fechaNacimiento datetime,@cuil varchar(255),@telefono numeric(10,0),@cliente_domicilio int,@fechaCreacion datetime)
as
begin
insert into  GD2C2018.[dropeadores].Cliente (numeroDocumento,nombre,apellido,tipoDocumento,cuil,mail,fechaNacimiento,cliente_domicilio,telefono,estado,fechaCreacion)
 values (@dni,@nombre,@apellido,@tipoDoc,@cuil, @mail,@fechaNacimiento,@cliente_domicilio,@telefono,1,@fechaCreacion)
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
create procedure [dropeadores].[Usuario_Alta_Empresa] (@CuitEmpresa nvarchar(255), @user nvarchar(255),@password nvarchar(255))
as
begin
insert into dropeadores.Usuario(username,password,CuitEmpresa)
values (@user,@password,@CuitEmpresa)
end
/****************FIN Realiza El alta de usuario con la empresa correspondiente**********/
/*
*********************Realiza El alta de la tarjeta con el cliente correspondiente *********************
*/
GO
CREATE procedure [dropeadores].[Cliente_Alta_Tarjeta] (@propietario nvarchar(255), @numero numeric(28, 0),@fechaVencimiento datetime,@clienteId numeric(18, 0))
as
begin
insert into dropeadores.TarjetaCredito(clieteId,propietario,numero,fechaVencimiento)
values (@clienteId,@propietario,@numero,@fechaVencimiento)
end
/***************FIN Realiza El alta de la tarjeta con el cliente correspondiente *****************/

/*
*********************Busca un usuario por su username*********************
*/
go
CREATE procedure [dropeadores].[obtenerUsuarioByUsername]
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

end

/****************FIN Usuario pedido**********/

/**************Delete empresa*****************/

IF OBJECT_ID ( 'dropeadores.deleteEmpresa', 'P' ) IS NOT NULL 
		DROP PROCEDURE dropeadores.deleteEmpresa
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE dropeadores.deleteEmpresa
	@cuitEmpresa nvarchar(255)	
AS
	UPDATE dropeadores.Empresa
	SET empresa_estado = 1
	WHERE empresa_Cuit = @cuitEmpresa
GO


/****************FIN Empresa delete**********/

/**************GET EMPRESA PARA ELIMINACION*****************/

GO
CREATE PROCEDURE dropeadores.getEmpresa
	@cuit nvarchar(255)
AS
	--SI RECIBE 00-00000000-00, MUESTRA TODOS LAS EMPRESAS
	IF (@cuit = '00-00000000-00')
		SELECT * FROM dropeadores.Empresa E			
	ELSE
		SELECT * FROM dropeadores.Empresa E	
		WHERE E.empresa_Cuit = @cuit

/****************FIN GET EMPRESA PARA ELIMINACION**********/
/**************ALTA DE UN CLIENTE*****************/
GO
CREATE procedure [dropeadores].[Cli_Alta] 
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
CREATE procedure [dropeadores].[Cli_ObtenerId]
as
begin
	
	Select  MAX(d.id)as'Id'from dropeadores.Cliente e 
	join dropeadores.Domicilio d on (d.id=e.cliente_domicilio)
end

/**************FIN DE BUSCAR ULTIMO ID INSERTADO*****************/

/**************BUSCAR ULTIMO ID INSERTADO DIRECCION*****************/
GO
CREATE procedure [dropeadores].[DireCli_ObtenerId]
as
begin
	
	Select Max(id)as'Id'from dropeadores.Domicilio
end

/**************BUSCAR ULTIMO ID INSERTADO DIRECCION*****************/

/**************CREAR DOMICILIO DE CLIENTE*****************/
GO
CREATE procedure [dropeadores].[Domicilio_Cli_Alta] (@calle nvarchar(255), @numero int,@piso int,@depto nvarchar(5),@localidad nvarchar(255),@cp int)
as
begin
insert into dbo.Clientes_Direccion(Cli_Dom_Calle,Cli_Nro_Calle,Cli_Piso,Cli_Depto,Cli_Localidad,Cli_Cod_Postal)values
(@calle,@numero,@piso,@depto,@localidad,@cp)

end

---NUEVO--
GO
Create procedure [dropeadores].[Domicilio_Cli_Alta] (@calle nvarchar(255), @numero int,@piso int,@depto nvarchar(5),@localidad nvarchar(255),@cp int)
as
begin
insert into dropeadores.Domicilio(calle,numero,piso,departamento,localidad,codigoPostal)values
(@calle,@numero,@piso,@depto,@localidad,@cp)

end
--FIN-NUEVO--
/**************FIN DE CREAR DOMICILIO CLIENTE*****************/

/**************PASAR USUARIO A INHABILITADO*****************/
GO
CREATE procedure [dropeadores].[pasarAInhabilitado] (@user nvarchar(255))
as
begin
update dropeadores.Usuario set estado=0 where username=@user
end
/**************FIN PASAR USUARIO A INHABILITADO*****************/

/**************ALTA DE USUARIO*****************/
GO
CREATE procedure [dropeadores].[Usuario_Alta] (@idCliente int, @user nvarchar(255),@password nvarchar(255),@fechaCreacion datetime,@creadoPor nvarchar(255))
as
begin
insert into dropeadores.Usuario(username,password,clienteId,Fecha_Password,creadoPor)values
(@user,@password,@idCliente,@fechaCreacion,@creadoPor)
end
/**************FIN ALTA DE USUARIO*****************/

/**************CAMBIAR PSW POR DEFECTO*****************/
GO
CREATE procedure [dropeadores].[Usuario_UpdatePsw]
(@username nvarchar(255), @passNueva nvarchar(255))
as
begin
update dropeadores.Usuario set password=@passNueva, cambioPsw=1 where username=@username and estado=1
end
/**************FIN CAMBIAR PSW POR DEFECTO*****************/


/**************Obtener nombre de roles*****************/
GO
CREATE procedure [dropeadores].obtenerRolByName
(@nombrerol nvarchar(255))
as
begin
select * from dropeadores.Rol where nombre=@nombrerol
end
/****************************************************/

/**************ALTA DE ROL*****************/
GO
CREATE procedure dropeadores.Alta_Rol
(@nombrerol nvarchar(255))
as
begin
insert into dropeadores.Rol (nombre) values (@nombreRol)
end
/****************************************/

/*************OBTENER ULTIMO ID INSERTADO DEL ROL*****************/
GO
CREATE procedure dropeadores.Rol_ObtenerId
as
begin
	Select Max(Id_Rol)as'Id'from dropeadores.Rol
end
/****************************************/

/*************INSERTAR UN ROL X FUNCIONALIDAD*****************/
GO
CREATE procedure dropeadores.AltaRolPorFuncionalidad
(@idRol int,@idFunc int)
as
begin
	insert into dropeadores.FuncionalidadXRol (rolId,funcionalidadId) values (@idRol,@idFunc)
end
/**************************************************************/


/*************GET TABLA CLIENTE *****************/ 
USE [GD2C2018]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dropeadores].[getCliente]
@unCliente numeric(18, 0)
AS
	BEGIN
	 --SI RECIBE VACIO, MUESTRA TODOS LOS CLIENTES HABILITADOS
	 IF (@unCliente = 0)
 		SELECT nombre as 'nombre',apellido as 'apellido',tipoDocumento as 'tipoDocumento',numeroDocumento as 'numeroDocumento',mail as 'mail',estado as 'ESTADO' FROM dropeadores.Cliente c
		
	 ELSE
		SELECT  nombre as 'nombre',apellido as 'apellido',tipoDocumento as 'tipoDocumento',numeroDocumento as 'numeroDocumento',mail as 'mail',estado as 'ESTADO' FROM dropeadores.Cliente c
		 c.numeroDocumento=@unCliente 
 
	END

/************************FIN**************************************/

/*************BAJA CLIENTE*****************/ 

IF OBJECT_ID ( 'dropeadores.deleteCliente', 'P' ) IS NOT NULL 
		DROP PROCEDURE dropeadores.deleteCliente
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE dropeadores.deleteCliente
	@tipoDoc nvarchar(255),	
	@nroDoc numeric(18, 0)
AS
	UPDATE dropeadores.Cliente
	SET estado = 0
	WHERE numeroDocumento = @nroDoc AND tipoDocumento=@tipoDoc
GO
/************************FIN BAJA CLIENTE**************************************/

/*************GET CLIENTE PARTICULAR*****************/ 

GO
CREATE PROCEDURE [dropeadores].[ObtenerClienteEspecifico]
	@tipoDoc nvarchar(50),
	@nroDoc numeric(18, 0)
AS
	--SI RECIBE -1, MUESTRA TODOS LOS HUESPEDES
	IF (@nroDoc = 0)
		SELECT * FROM dropeadores.Cliente c join dropeadores.Domicilio D on(C.cliente_domicilio=D.id)	
											join dropeadores.TarjetaCredito T on (T.clieteId=C.numeroDocumento)		
	ELSE
		SELECT * FROM dropeadores.Cliente c join dropeadores.Domicilio D on(C.cliente_domicilio=D.id)	
											join dropeadores.TarjetaCredito T on (T.clieteId=C.numeroDocumento)		
		WHERE c.tipoDocumento = @tipoDoc and c.numeroDocumento= @nroDoc

/*************FIN GET CLIENTE PARTICULAR*****************/ 

/*************UPDATE TARJETA CLIENTE*****************/ 
GO
CREATE PROCEDURE [dropeadores].[updateTarjetaCliente]
			@idCliente numeric(18, 0),
			@propietario nvarchar(255),
            @numero varchar(19),
            @fechaVencimiento datetime
AS
	BEGIN
		IF(@propietario != '')
			UPDATE dropeadores.TarjetaCredito
				SET propietario=UPPER(@propietario)
				where clieteId= @idCliente
					
		IF(@numero != -1)
			UPDATE dropeadores.TarjetaCredito
				SET numero = @numero
				where clieteId= @idCliente

		IF(@fechaVencimiento IS NOT NULL)
			UPDATE dropeadores.TarjetaCredito
				SET fechaVencimiento = @fechaVencimiento
				where clieteId= @idCliente
	END



/*************FIN UPDATE TARJETA CLIENTE*****************/

/*************DELETE CLIENTE*****************/
GO
CREATE PROCEDURE [dropeadores].[deleteCliente]
	@tipoDoc nvarchar(255),	
	@nroDoc numeric(18, 0)
AS
	UPDATE dropeadores.Cliente
	SET estado = 0
	WHERE numeroDocumento = @nroDoc AND tipoDocumento=@tipoDoc

/*************FIN DELETE CLIENTE*****************/

/************* UPDATE CLIENTE *******************/

GO
CREATE PROCEDURE [dropeadores].[updateCliente]
            @nroDoc numeric(18, 0),
            @nombre nvarchar(255),
			@apellido nvarchar(255),
			@tipoDoc nvarchar(50),
			@cuil nvarchar(255),
			@mail nvarchar(255),
			@fechaNacimiento datetime,
			@clienteDom int,
            @telefono int,
            @campoBaja bit
AS
	BEGIN
		IF(@nombre  != '')
			UPDATE dropeadores.Cliente
				SET nombre = UPPER(@nombre)
					WHERE numeroDocumento = @nroDoc
		IF(@apellido  != '')
			UPDATE dropeadores.Cliente
				SET apellido = UPPER(@apellido)
					WHERE numeroDocumento = @nroDoc
		IF(@tipoDoc  != '')
			UPDATE dropeadores.Cliente
				SET tipoDocumento = @tipoDoc
					WHERE numeroDocumento = @nroDoc
		IF(@cuil  != '')
			UPDATE dropeadores.Cliente
				SET cuil = UPPER(@cuil)
					WHERE numeroDocumento = @nroDoc
		IF(@mail  != '')
			UPDATE dropeadores.Cliente
				SET mail = LOWER(@mail)
					WHERE numeroDocumento = @nroDoc

		IF(@fechaNacimiento IS NOT NULL)
			UPDATE dropeadores.Cliente
				SET fechaNacimiento = @fechaNacimiento
					WHERE numeroDocumento = @nroDoc
		IF(@clienteDom != -1)
			UPDATE dropeadores.Cliente
				SET cliente_domicilio = @clienteDom
					WHERE numeroDocumento = @nroDoc
		IF(@telefono != -1)
			UPDATE dropeadores.Cliente
				SET telefono = @telefono
					WHERE numeroDocumento = @nroDoc
		IF(@campoBaja IS NOT NULL)
			UPDATE dropeadores.Cliente
				SET estado = @campoBaja
					WHERE numeroDocumento = @nroDoc
	
	END




/***********FIN UPDATE CLIENTE *******************/




/*************ALTA GRADO*****************/ 
USE [GD2C2018]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dropeadores].[Grado_Alta] 
(@tipo varchar(255),@porcentaje numeric(10, 2))
as
begin
insert into  GD2C2018.[dropeadores].Grado(tipo,porcentaje)
 values (@tipo,@porcentaje)
end
/*************FIN GRADO*****************/ 

/*************FILTRAR GRADO*****************/
GO
CREATE PROCEDURE [dropeadores].[getGrado]
	@tipo varchar(255)
AS
	--SI RECIBE VACIO"", MUESTRA TODOS LOS GRADOS
	IF (@tipo = '')
		select id as 'CÓDIGO', tipo as 'DESCRIPCIÓN',porcentaje as 'COMISIÓN',estado as 'ESTADO'  FROM dropeadores.Grado G
		where estado =1			
	ELSE
		select id as 'CÓDIGO', tipo as 'DESCRIPCIÓN',porcentaje as 'COMISIÓN',estado as 'ESTADO'  FROM dropeadores.Grado G	
		WHERE G.tipo = @tipo and estado = 1




/*************FIN FILTRAR GRADO*****************/

/*************DELETE LOGICO GRADO*****************/
GO
CREATE PROCEDURE [dropeadores].[deleteGrado]
	@id int
AS
	UPDATE dropeadores.Grado
	SET estado = 0
	WHERE id = @id

/*************FIN  DELETE LOGICO GRADO*****************/

/*************UPDATE GRADO*****************/
GO
CREATE PROCEDURE [dropeadores].[updateGrado]
			@id int,
			@tipo varchar(255),
			@porc numeric(10, 2),
            @estado bit
AS
	BEGIN
			UPDATE dropeadores.Grado
				SET tipo = LOWER(@tipo) , porcentaje = @porc , estado = @estado
				where id = @id
	
	END


/*************FIN UPDATE GRADO*****************/

/*************GET GRADO ESPECIFICO*****************/

GO
CREATE PROCEDURE [dropeadores].[ObtenerGradoEspecifico]
	@id int
AS
	select id as 'CÓDIGO', tipo as 'DESCRIPCIÓN',porcentaje as 'COMISIÓN',estado as 'ESTADO'  FROM dropeadores.Grado G
	where g.id=@id

/*************FIN  GET GRADO ESPECIFICO*****************/
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
---29/11--
Create table [dropeadores].Cliente (
NumeroDocumento numeric(18,0) primary key,
Nombre nvarchar(255),
Apellido nvarchar(255),
TipoDocumento nvarchar(50),
cuil nvarchar(255),
mail nvarchar(255),
fechaNacimiento datetime,
fechaCreacion datetime,
cliente_domicilio int,
)

CREATE TABLE [DROPEADORES].[Domicilio] (
    [id] int primary key identity,
    [calle] nvarchar(255)  NULL,
    [numero] numeric(18,0)  NULL,
    [codigoPostal] nvarchar(255)  NULL,
    [departamento] nvarchar(255)  NULL,
    [localidad] nvarchar(255)  NULL,
    [ciudad] nvarchar(255)  NULL,
    [piso] numeric(18,0)  NULL,
  );
GO

Create table [dropeadores].TarjetaCredito (
Id int primary key identity,
clieteId numeric(18, 0),
propietario  nvarchar(255),
numero varchar(19),
fechaVencimiento datetime,
)

create table [dropeadores].Rubro(
id int primary key identity,
descripcion varchar(255) not null,
)


create table dropeadores.Grado(
id int primary key identity,
tipo varchar(255) not null,
porcentaje numeric(10,2) not null,
estado bit DEFAULT 1 not null)

create table [dropeadores].Compra(
id int primary key identity,
factura int,
compra_tipo_documento varchar(5),
compra_numero_documento numeric(18,0),
compra_TarjetaId int,
compra_fecha datetime not null,
compra_cantidad numeric(18,0) not null,
compra_precio int not null,
compra_puntosId int,
compra_ubicacionId int,
FOREIGN KEY (compra_numero_documento) REFERENCES [dropeadores].Cliente(numeroDocumento),
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
insert into [dropeadores].Empresa (empresa_Cuit,empresa_mail,empresa_razon_social,empresa_domicilio)
select distinct Espec_Empresa_Cuit,Espec_Empresa_Mail,Espec_Empresa_Razon_Social,d.id
from gd_esquema.Maestra m join dropeadores.Domicilio d on (m.Cli_Dom_Calle=d.calle and m.Cli_Nro_Calle=d.numero and m.Cli_Cod_Postal=d.codigoPostal and m.Cli_Depto=d.departamento)
where Espec_Empresa_Cuit is not null 

					/*Domicilio de la Empresa*/
insert into [dropeadores].Domicilio (calle,numero,codigoPostal,departamento,piso)
select distinct Espec_Empresa_Dom_Calle,Espec_Empresa_Nro_Calle,Espec_Empresa_Cod_Postal, Espec_Empresa_Depto,Espec_Empresa_Piso
from gd_esquema.Maestra m 


					/*Cliente*/
insert into [dropeadores].Cliente(NumeroDocumento,Nombre,Apellido,fechaNacimiento,mail,cliente_domicilio)
select distinct Cli_Dni,Cli_Nombre,Cli_Apeliido,Cli_Fecha_Nac,Cli_Mail,d.id
from gd_esquema.Maestra m join dropeadores.Domicilio d on (m.Cli_Dom_Calle=d.calle and m.Cli_Nro_Calle=d.numero and m.Cli_Cod_Postal=d.codigoPostal and m.Cli_Depto=d.departamento)
where Cli_Dni is not null 



					/*Domicilio del Cliente*/
insert into [dropeadores].Domicilio(calle,numero,codigoPostal,departamento,piso)
select distinct Cli_Dom_Calle, Cli_Nro_Calle, Cli_Cod_Postal, Cli_Depto, Cli_Piso
from gd_esquema.Maestra m 

					/*Rubro Espectaculo*/
go
insert into dropeadores.Rubro(descripcion)
select distinct Espectaculo_Rubro_Descripcion from gd_esquema.Maestra

					/*Grado Publicacion*/
go
insert into dropeadores.Grado(tipo,porcentaje) values
('Alta',15),
('Media',10),
('Baja',5);

