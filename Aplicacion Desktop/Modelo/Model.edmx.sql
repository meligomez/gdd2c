
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/26/2018 23:10:18
-- Generated from EDMX file: C:\Users\Juan Carlos Mujica\Documents\workspace\gdd2c\Aplicacion Desktop\Modelo\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GD2C2018];
GO
IF SCHEMA_ID(N'DROPEADORES') IS NULL EXECUTE(N'CREATE SCHEMA [DROPEADORES]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[DROPEADORES].[FK_ClienteTarjetaCredito]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[TarjetaCredito] DROP CONSTRAINT [FK_ClienteTarjetaCredito];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_TarjetaCreditoEmisorTarjeta]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[TarjetaCredito] DROP CONSTRAINT [FK_TarjetaCreditoEmisorTarjeta];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_EmpresaPublicacion]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Publicacion] DROP CONSTRAINT [FK_EmpresaPublicacion];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_PublicacionRubro]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Publicacion] DROP CONSTRAINT [FK_PublicacionRubro];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_PublicacionGradoPublicacion]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Publicacion] DROP CONSTRAINT [FK_PublicacionGradoPublicacion];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_CompraPublicacion]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Compra] DROP CONSTRAINT [FK_CompraPublicacion];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_CompraTarjetaCredito]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Compra] DROP CONSTRAINT [FK_CompraTarjetaCredito];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_ClientePuntos]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[PuntoCompra] DROP CONSTRAINT [FK_ClientePuntos];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_CompraCliente]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Compra] DROP CONSTRAINT [FK_CompraCliente];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_ClientePremioUsuario]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[PremioXUsuario] DROP CONSTRAINT [FK_ClientePremioUsuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_PremioXUsuarioPremio]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[PremioXUsuario] DROP CONSTRAINT [FK_PremioXUsuarioPremio];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_FacturaItemFactura]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[ItemFactura] DROP CONSTRAINT [FK_FacturaItemFactura];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_CompraItemFactura]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[ItemFactura] DROP CONSTRAINT [FK_CompraItemFactura];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_EmpresaFactura]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Factura] DROP CONSTRAINT [FK_EmpresaFactura];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_DomicilioUsuario]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Domicilio] DROP CONSTRAINT [FK_DomicilioUsuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_UsuarioRolXUsuario]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[RolXUsuario] DROP CONSTRAINT [FK_UsuarioRolXUsuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_RolXUsuarioRol]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[RolXUsuario] DROP CONSTRAINT [FK_RolXUsuarioRol];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_PuntoXCompra]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[PuntoCompra] DROP CONSTRAINT [FK_PuntoXCompra];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_RolFuncionalidadXRol]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[FuncionalidadXRol] DROP CONSTRAINT [FK_RolFuncionalidadXRol];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_FuncionalidadXRolFuncionalidad]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[FuncionalidadXRol] DROP CONSTRAINT [FK_FuncionalidadXRolFuncionalidad];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_Cliente_inherits_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Usuario_Cliente] DROP CONSTRAINT [FK_Cliente_inherits_Usuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[FK_Empresa_inherits_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [DROPEADORES].[Usuario_Empresa] DROP CONSTRAINT [FK_Empresa_inherits_Usuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[DROPEADORES].[Funcionalidad]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Funcionalidad];
GO
IF OBJECT_ID(N'[DROPEADORES].[FuncionalidadXRol]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[FuncionalidadXRol];
GO
IF OBJECT_ID(N'[DROPEADORES].[Rol]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Rol];
GO
IF OBJECT_ID(N'[DROPEADORES].[RolXUsuario]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[RolXUsuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Usuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[Domicilio]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Domicilio];
GO
IF OBJECT_ID(N'[DROPEADORES].[Rubro]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Rubro];
GO
IF OBJECT_ID(N'[DROPEADORES].[Grado]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Grado];
GO
IF OBJECT_ID(N'[DROPEADORES].[TarjetaCredito]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[TarjetaCredito];
GO
IF OBJECT_ID(N'[DROPEADORES].[EmisorTarjeta]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[EmisorTarjeta];
GO
IF OBJECT_ID(N'[DROPEADORES].[Publicacion]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Publicacion];
GO
IF OBJECT_ID(N'[DROPEADORES].[Compra]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Compra];
GO
IF OBJECT_ID(N'[DROPEADORES].[PuntoCompra]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[PuntoCompra];
GO
IF OBJECT_ID(N'[DROPEADORES].[Premio]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Premio];
GO
IF OBJECT_ID(N'[DROPEADORES].[PremioXUsuario]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[PremioXUsuario];
GO
IF OBJECT_ID(N'[DROPEADORES].[Factura]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Factura];
GO
IF OBJECT_ID(N'[DROPEADORES].[ItemFactura]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[ItemFactura];
GO
IF OBJECT_ID(N'[DROPEADORES].[Usuario_Cliente]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Usuario_Cliente];
GO
IF OBJECT_ID(N'[DROPEADORES].[Usuario_Empresa]', 'U') IS NOT NULL
    DROP TABLE [DROPEADORES].[Usuario_Empresa];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Funcionalidad'
CREATE TABLE [DROPEADORES].[Funcionalidad] (
    [id] int IDENTITY(1,1) NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL
);
GO

-- Creating table 'FuncionalidadXRol'
CREATE TABLE [DROPEADORES].[FuncionalidadXRol] (
    [id] int  NOT NULL,
    [rolId] int  NOT NULL,
    [funcionalidadId] int  NOT NULL
);
GO

-- Creating table 'Rol'
CREATE TABLE [DROPEADORES].[Rol] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(255)  NOT NULL,
    [activo] bit  NOT NULL,
    [eliminado] bit  NOT NULL
);
GO

-- Creating table 'RolXUsuario'
CREATE TABLE [DROPEADORES].[RolXUsuario] (
    [id] int  NOT NULL,
    [usuarioId] int  NOT NULL,
    [rolId] int  NOT NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [DROPEADORES].[Usuario] (
    [id] int IDENTITY(1,1) NOT NULL,
    [username] nvarchar(250)  NOT NULL,
    [password] nvarchar(250)  NOT NULL,
    [passwordAutogenerado] bit  NOT NULL,
    [activo] bit  NOT NULL,
    [intentos] int  NULL,
    [eliminado] bit  NOT NULL
);
GO

-- Creating table 'Domicilio'
CREATE TABLE [DROPEADORES].[Domicilio] (
    [id] int IDENTITY(1,1) NOT NULL,
    [calle] nvarchar(250)  NULL,
    [numero] nvarchar(20)  NULL,
    [codigoPostal] nvarchar(50)  NULL,
    [departamento] nvarchar(50)  NULL,
    [localidad] nvarchar(100)  NULL,
    [ciudad] nvarchar(100)  NULL,
    [piso] nvarchar(20)  NOT NULL,
    [Usuario_id] int  NOT NULL
);
GO

-- Creating table 'Rubro'
CREATE TABLE [DROPEADORES].[Rubro] (
    [id] int IDENTITY(1,1) NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL
);
GO

-- Creating table 'Grado'
CREATE TABLE [DROPEADORES].[Grado] (
    [id] int IDENTITY(1,1) NOT NULL,
    [tipo] nvarchar(250)  NOT NULL,
    [porcentaje] float  NOT NULL
);
GO

-- Creating table 'TarjetaCredito'
CREATE TABLE [DROPEADORES].[TarjetaCredito] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [clienteId] int  NOT NULL,
    [emisorId] int  NOT NULL,
    [propietario] nvarchar(250)  NOT NULL,
    [numero] nvarchar(50)  NOT NULL,
    [fechaVencimiento] datetime  NOT NULL
);
GO

-- Creating table 'EmisorTarjeta'
CREATE TABLE [DROPEADORES].[EmisorTarjeta] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Publicacion'
CREATE TABLE [DROPEADORES].[Publicacion] (
    [id] int IDENTITY(1,1) NOT NULL,
    [empresaId] int  NOT NULL,
    [rubroId] int  NOT NULL,
    [gradoId] int  NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL,
    [stock] int  NOT NULL,
    [fechaPublicacion] datetime  NOT NULL,
    [fechaEspectaculo] datetime  NOT NULL,
    [precio] float  NOT NULL,
    [direccion] nvarchar(250)  NULL
);
GO

-- Creating table 'Compra'
CREATE TABLE [DROPEADORES].[Compra] (
    [id] int IDENTITY(1,1) NOT NULL,
    [publicacionId] int  NOT NULL,
    [fechaCompra] datetime  NOT NULL,
    [tarjetaId] int  NOT NULL,
    [clienteId] int  NOT NULL
);
GO

-- Creating table 'PuntoCompra'
CREATE TABLE [DROPEADORES].[PuntoCompra] (
    [id] int IDENTITY(1,1) NOT NULL,
    [clienteId] int  NOT NULL,
    [puntos] int  NOT NULL,
    [puntosVigentes] int  NOT NULL,
    [fechaVencimiento] datetime  NOT NULL,
    [Compra_id] int  NOT NULL
);
GO

-- Creating table 'Premio'
CREATE TABLE [DROPEADORES].[Premio] (
    [id] int IDENTITY(1,1) NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL,
    [puntos] int  NOT NULL
);
GO

-- Creating table 'PremioXUsuario'
CREATE TABLE [DROPEADORES].[PremioXUsuario] (
    [id] int IDENTITY(1,1) NOT NULL,
    [clienteId] int  NOT NULL,
    [premioId] int  NOT NULL
);
GO

-- Creating table 'Factura'
CREATE TABLE [DROPEADORES].[Factura] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fecha] datetime  NOT NULL,
    [total] decimal(18,0)  NOT NULL,
    [comision] decimal(18,0)  NOT NULL,
    [empresaId] int  NOT NULL
);
GO

-- Creating table 'ItemFactura'
CREATE TABLE [DROPEADORES].[ItemFactura] (
    [id] int IDENTITY(1,1) NOT NULL,
    [facturaId] int  NOT NULL,
    [compraId] int  NOT NULL
);
GO

-- Creating table 'Usuario_Cliente'
CREATE TABLE [DROPEADORES].[Usuario_Cliente] (
    [nombre] nvarchar(max)  NOT NULL,
    [apellido] nvarchar(max)  NOT NULL,
    [tipoDocumento] nvarchar(max)  NOT NULL,
    [numeroDocumento] nvarchar(max)  NOT NULL,
    [cuil] nvarchar(max)  NOT NULL,
    [mail] nvarchar(max)  NOT NULL,
    [telefono] nvarchar(max)  NOT NULL,
    [fechaNacimiento] nvarchar(max)  NOT NULL,
    [fechaCreacion] nvarchar(max)  NOT NULL,
    [id] int  NOT NULL
);
GO

-- Creating table 'Usuario_Empresa'
CREATE TABLE [DROPEADORES].[Usuario_Empresa] (
    [cuit] varchar(255)  NOT NULL,
    [mail] nvarchar(255)  NULL,
    [telefono] decimal(10,0)  NULL,
    [razonSocial] nvarchar(255)  NULL,
    [id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Funcionalidad'
ALTER TABLE [DROPEADORES].[Funcionalidad]
ADD CONSTRAINT [PK_Funcionalidad]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'FuncionalidadXRol'
ALTER TABLE [DROPEADORES].[FuncionalidadXRol]
ADD CONSTRAINT [PK_FuncionalidadXRol]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Rol'
ALTER TABLE [DROPEADORES].[Rol]
ADD CONSTRAINT [PK_Rol]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'RolXUsuario'
ALTER TABLE [DROPEADORES].[RolXUsuario]
ADD CONSTRAINT [PK_RolXUsuario]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuario'
ALTER TABLE [DROPEADORES].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Domicilio'
ALTER TABLE [DROPEADORES].[Domicilio]
ADD CONSTRAINT [PK_Domicilio]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Rubro'
ALTER TABLE [DROPEADORES].[Rubro]
ADD CONSTRAINT [PK_Rubro]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grado'
ALTER TABLE [DROPEADORES].[Grado]
ADD CONSTRAINT [PK_Grado]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'TarjetaCredito'
ALTER TABLE [DROPEADORES].[TarjetaCredito]
ADD CONSTRAINT [PK_TarjetaCredito]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'EmisorTarjeta'
ALTER TABLE [DROPEADORES].[EmisorTarjeta]
ADD CONSTRAINT [PK_EmisorTarjeta]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Publicacion'
ALTER TABLE [DROPEADORES].[Publicacion]
ADD CONSTRAINT [PK_Publicacion]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Compra'
ALTER TABLE [DROPEADORES].[Compra]
ADD CONSTRAINT [PK_Compra]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'PuntoCompra'
ALTER TABLE [DROPEADORES].[PuntoCompra]
ADD CONSTRAINT [PK_PuntoCompra]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Premio'
ALTER TABLE [DROPEADORES].[Premio]
ADD CONSTRAINT [PK_Premio]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'PremioXUsuario'
ALTER TABLE [DROPEADORES].[PremioXUsuario]
ADD CONSTRAINT [PK_PremioXUsuario]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Factura'
ALTER TABLE [DROPEADORES].[Factura]
ADD CONSTRAINT [PK_Factura]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ItemFactura'
ALTER TABLE [DROPEADORES].[ItemFactura]
ADD CONSTRAINT [PK_ItemFactura]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuario_Cliente'
ALTER TABLE [DROPEADORES].[Usuario_Cliente]
ADD CONSTRAINT [PK_Usuario_Cliente]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuario_Empresa'
ALTER TABLE [DROPEADORES].[Usuario_Empresa]
ADD CONSTRAINT [PK_Usuario_Empresa]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [clienteId] in table 'TarjetaCredito'
ALTER TABLE [DROPEADORES].[TarjetaCredito]
ADD CONSTRAINT [FK_ClienteTarjetaCredito]
    FOREIGN KEY ([clienteId])
    REFERENCES [DROPEADORES].[Usuario_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteTarjetaCredito'
CREATE INDEX [IX_FK_ClienteTarjetaCredito]
ON [DROPEADORES].[TarjetaCredito]
    ([clienteId]);
GO

-- Creating foreign key on [emisorId] in table 'TarjetaCredito'
ALTER TABLE [DROPEADORES].[TarjetaCredito]
ADD CONSTRAINT [FK_TarjetaCreditoEmisorTarjeta]
    FOREIGN KEY ([emisorId])
    REFERENCES [DROPEADORES].[EmisorTarjeta]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TarjetaCreditoEmisorTarjeta'
CREATE INDEX [IX_FK_TarjetaCreditoEmisorTarjeta]
ON [DROPEADORES].[TarjetaCredito]
    ([emisorId]);
GO

-- Creating foreign key on [empresaId] in table 'Publicacion'
ALTER TABLE [DROPEADORES].[Publicacion]
ADD CONSTRAINT [FK_EmpresaPublicacion]
    FOREIGN KEY ([empresaId])
    REFERENCES [DROPEADORES].[Usuario_Empresa]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpresaPublicacion'
CREATE INDEX [IX_FK_EmpresaPublicacion]
ON [DROPEADORES].[Publicacion]
    ([empresaId]);
GO

-- Creating foreign key on [rubroId] in table 'Publicacion'
ALTER TABLE [DROPEADORES].[Publicacion]
ADD CONSTRAINT [FK_PublicacionRubro]
    FOREIGN KEY ([rubroId])
    REFERENCES [DROPEADORES].[Rubro]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PublicacionRubro'
CREATE INDEX [IX_FK_PublicacionRubro]
ON [DROPEADORES].[Publicacion]
    ([rubroId]);
GO

-- Creating foreign key on [gradoId] in table 'Publicacion'
ALTER TABLE [DROPEADORES].[Publicacion]
ADD CONSTRAINT [FK_PublicacionGradoPublicacion]
    FOREIGN KEY ([gradoId])
    REFERENCES [DROPEADORES].[Grado]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PublicacionGradoPublicacion'
CREATE INDEX [IX_FK_PublicacionGradoPublicacion]
ON [DROPEADORES].[Publicacion]
    ([gradoId]);
GO

-- Creating foreign key on [publicacionId] in table 'Compra'
ALTER TABLE [DROPEADORES].[Compra]
ADD CONSTRAINT [FK_CompraPublicacion]
    FOREIGN KEY ([publicacionId])
    REFERENCES [DROPEADORES].[Publicacion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraPublicacion'
CREATE INDEX [IX_FK_CompraPublicacion]
ON [DROPEADORES].[Compra]
    ([publicacionId]);
GO

-- Creating foreign key on [tarjetaId] in table 'Compra'
ALTER TABLE [DROPEADORES].[Compra]
ADD CONSTRAINT [FK_CompraTarjetaCredito]
    FOREIGN KEY ([tarjetaId])
    REFERENCES [DROPEADORES].[TarjetaCredito]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraTarjetaCredito'
CREATE INDEX [IX_FK_CompraTarjetaCredito]
ON [DROPEADORES].[Compra]
    ([tarjetaId]);
GO

-- Creating foreign key on [clienteId] in table 'PuntoCompra'
ALTER TABLE [DROPEADORES].[PuntoCompra]
ADD CONSTRAINT [FK_ClientePuntos]
    FOREIGN KEY ([clienteId])
    REFERENCES [DROPEADORES].[Usuario_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientePuntos'
CREATE INDEX [IX_FK_ClientePuntos]
ON [DROPEADORES].[PuntoCompra]
    ([clienteId]);
GO

-- Creating foreign key on [clienteId] in table 'Compra'
ALTER TABLE [DROPEADORES].[Compra]
ADD CONSTRAINT [FK_CompraCliente]
    FOREIGN KEY ([clienteId])
    REFERENCES [DROPEADORES].[Usuario_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraCliente'
CREATE INDEX [IX_FK_CompraCliente]
ON [DROPEADORES].[Compra]
    ([clienteId]);
GO

-- Creating foreign key on [clienteId] in table 'PremioXUsuario'
ALTER TABLE [DROPEADORES].[PremioXUsuario]
ADD CONSTRAINT [FK_ClientePremioUsuario]
    FOREIGN KEY ([clienteId])
    REFERENCES [DROPEADORES].[Usuario_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientePremioUsuario'
CREATE INDEX [IX_FK_ClientePremioUsuario]
ON [DROPEADORES].[PremioXUsuario]
    ([clienteId]);
GO

-- Creating foreign key on [premioId] in table 'PremioXUsuario'
ALTER TABLE [DROPEADORES].[PremioXUsuario]
ADD CONSTRAINT [FK_PremioXUsuarioPremio]
    FOREIGN KEY ([premioId])
    REFERENCES [DROPEADORES].[Premio]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PremioXUsuarioPremio'
CREATE INDEX [IX_FK_PremioXUsuarioPremio]
ON [DROPEADORES].[PremioXUsuario]
    ([premioId]);
GO

-- Creating foreign key on [facturaId] in table 'ItemFactura'
ALTER TABLE [DROPEADORES].[ItemFactura]
ADD CONSTRAINT [FK_FacturaItemFactura]
    FOREIGN KEY ([facturaId])
    REFERENCES [DROPEADORES].[Factura]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FacturaItemFactura'
CREATE INDEX [IX_FK_FacturaItemFactura]
ON [DROPEADORES].[ItemFactura]
    ([facturaId]);
GO

-- Creating foreign key on [compraId] in table 'ItemFactura'
ALTER TABLE [DROPEADORES].[ItemFactura]
ADD CONSTRAINT [FK_CompraItemFactura]
    FOREIGN KEY ([compraId])
    REFERENCES [DROPEADORES].[Compra]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraItemFactura'
CREATE INDEX [IX_FK_CompraItemFactura]
ON [DROPEADORES].[ItemFactura]
    ([compraId]);
GO

-- Creating foreign key on [empresaId] in table 'Factura'
ALTER TABLE [DROPEADORES].[Factura]
ADD CONSTRAINT [FK_EmpresaFactura]
    FOREIGN KEY ([empresaId])
    REFERENCES [DROPEADORES].[Usuario_Empresa]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpresaFactura'
CREATE INDEX [IX_FK_EmpresaFactura]
ON [DROPEADORES].[Factura]
    ([empresaId]);
GO

-- Creating foreign key on [Usuario_id] in table 'Domicilio'
ALTER TABLE [DROPEADORES].[Domicilio]
ADD CONSTRAINT [FK_DomicilioUsuario]
    FOREIGN KEY ([Usuario_id])
    REFERENCES [DROPEADORES].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DomicilioUsuario'
CREATE INDEX [IX_FK_DomicilioUsuario]
ON [DROPEADORES].[Domicilio]
    ([Usuario_id]);
GO

-- Creating foreign key on [usuarioId] in table 'RolXUsuario'
ALTER TABLE [DROPEADORES].[RolXUsuario]
ADD CONSTRAINT [FK_UsuarioRolXUsuario]
    FOREIGN KEY ([usuarioId])
    REFERENCES [DROPEADORES].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioRolXUsuario'
CREATE INDEX [IX_FK_UsuarioRolXUsuario]
ON [DROPEADORES].[RolXUsuario]
    ([usuarioId]);
GO

-- Creating foreign key on [rolId] in table 'RolXUsuario'
ALTER TABLE [DROPEADORES].[RolXUsuario]
ADD CONSTRAINT [FK_RolXUsuarioRol]
    FOREIGN KEY ([rolId])
    REFERENCES [DROPEADORES].[Rol]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolXUsuarioRol'
CREATE INDEX [IX_FK_RolXUsuarioRol]
ON [DROPEADORES].[RolXUsuario]
    ([rolId]);
GO

-- Creating foreign key on [Compra_id] in table 'PuntoCompra'
ALTER TABLE [DROPEADORES].[PuntoCompra]
ADD CONSTRAINT [FK_PuntoXCompra]
    FOREIGN KEY ([Compra_id])
    REFERENCES [DROPEADORES].[Compra]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PuntoXCompra'
CREATE INDEX [IX_FK_PuntoXCompra]
ON [DROPEADORES].[PuntoCompra]
    ([Compra_id]);
GO

-- Creating foreign key on [rolId] in table 'FuncionalidadXRol'
ALTER TABLE [DROPEADORES].[FuncionalidadXRol]
ADD CONSTRAINT [FK_RolFuncionalidadXRol]
    FOREIGN KEY ([rolId])
    REFERENCES [DROPEADORES].[Rol]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolFuncionalidadXRol'
CREATE INDEX [IX_FK_RolFuncionalidadXRol]
ON [DROPEADORES].[FuncionalidadXRol]
    ([rolId]);
GO

-- Creating foreign key on [funcionalidadId] in table 'FuncionalidadXRol'
ALTER TABLE [DROPEADORES].[FuncionalidadXRol]
ADD CONSTRAINT [FK_FuncionalidadXRolFuncionalidad]
    FOREIGN KEY ([funcionalidadId])
    REFERENCES [DROPEADORES].[Funcionalidad]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionalidadXRolFuncionalidad'
CREATE INDEX [IX_FK_FuncionalidadXRolFuncionalidad]
ON [DROPEADORES].[FuncionalidadXRol]
    ([funcionalidadId]);
GO

-- Creating foreign key on [id] in table 'Usuario_Cliente'
ALTER TABLE [DROPEADORES].[Usuario_Cliente]
ADD CONSTRAINT [FK_Cliente_inherits_Usuario]
    FOREIGN KEY ([id])
    REFERENCES [DROPEADORES].[Usuario]
        ([id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [id] in table 'Usuario_Empresa'
ALTER TABLE [DROPEADORES].[Usuario_Empresa]
ADD CONSTRAINT [FK_Empresa_inherits_Usuario]
    FOREIGN KEY ([id])
    REFERENCES [DROPEADORES].[Usuario]
        ([id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------