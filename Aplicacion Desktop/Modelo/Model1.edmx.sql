
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/21/2018 23:39:12
-- Generated from EDMX file: C:\Users\Juan Carlos Mujica\Documents\workspace\gdd2c\Aplicacion Desktop\Modelo\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GD2C2018];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClienteTarjetaCredito]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TarjetaCreditos] DROP CONSTRAINT [FK_ClienteTarjetaCredito];
GO
IF OBJECT_ID(N'[dbo].[FK_TarjetaCreditoEmisorTarjeta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TarjetaCreditos] DROP CONSTRAINT [FK_TarjetaCreditoEmisorTarjeta];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpresaPublicacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Publicaciones] DROP CONSTRAINT [FK_EmpresaPublicacion];
GO
IF OBJECT_ID(N'[dbo].[FK_PublicacionRubro]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Publicaciones] DROP CONSTRAINT [FK_PublicacionRubro];
GO
IF OBJECT_ID(N'[dbo].[FK_PublicacionGradoPublicacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Publicaciones] DROP CONSTRAINT [FK_PublicacionGradoPublicacion];
GO
IF OBJECT_ID(N'[dbo].[FK_CompraPublicacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_CompraPublicacion];
GO
IF OBJECT_ID(N'[dbo].[FK_CompraTarjetaCredito]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_CompraTarjetaCredito];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientePuntos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PuntoCompras] DROP CONSTRAINT [FK_ClientePuntos];
GO
IF OBJECT_ID(N'[dbo].[FK_CompraCliente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_CompraCliente];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientePremioUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PremioXUsuarios] DROP CONSTRAINT [FK_ClientePremioUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_PremioXUsuarioPremio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PremioXUsuarios] DROP CONSTRAINT [FK_PremioXUsuarioPremio];
GO
IF OBJECT_ID(N'[dbo].[FK_FacturaItemFactura]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemFacturas] DROP CONSTRAINT [FK_FacturaItemFactura];
GO
IF OBJECT_ID(N'[dbo].[FK_CompraItemFactura]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ItemFacturas] DROP CONSTRAINT [FK_CompraItemFactura];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpresaFactura]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Facturas] DROP CONSTRAINT [FK_EmpresaFactura];
GO
IF OBJECT_ID(N'[dbo].[FK_DomicilioUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Domicilios] DROP CONSTRAINT [FK_DomicilioUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioRolXUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RolXUsuarios] DROP CONSTRAINT [FK_UsuarioRolXUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_RolXUsuarioRol]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RolXUsuarios] DROP CONSTRAINT [FK_RolXUsuarioRol];
GO
IF OBJECT_ID(N'[dbo].[FK_PuntoXCompra]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PuntoCompras] DROP CONSTRAINT [FK_PuntoXCompra];
GO
IF OBJECT_ID(N'[dbo].[FK_RolFuncionalidadXRol]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FuncionalidadXRoles] DROP CONSTRAINT [FK_RolFuncionalidadXRol];
GO
IF OBJECT_ID(N'[dbo].[FK_FuncionalidadXRolFuncionalidad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FuncionalidadXRoles] DROP CONSTRAINT [FK_FuncionalidadXRolFuncionalidad];
GO
IF OBJECT_ID(N'[dbo].[FK_Cliente_inherits_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_Cliente] DROP CONSTRAINT [FK_Cliente_inherits_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Empresa_inherits_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuarios_Empresa] DROP CONSTRAINT [FK_Empresa_inherits_Usuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Funcionalidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Funcionalidades];
GO
IF OBJECT_ID(N'[dbo].[FuncionalidadXRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FuncionalidadXRoles];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[RolXUsuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RolXUsuarios];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO
IF OBJECT_ID(N'[dbo].[Domicilios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Domicilios];
GO
IF OBJECT_ID(N'[dbo].[Rubros]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rubros];
GO
IF OBJECT_ID(N'[dbo].[GradoPublicaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GradoPublicaciones];
GO
IF OBJECT_ID(N'[dbo].[TarjetaCreditos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TarjetaCreditos];
GO
IF OBJECT_ID(N'[dbo].[EmisorTarjetas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmisorTarjetas];
GO
IF OBJECT_ID(N'[dbo].[Publicaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Publicaciones];
GO
IF OBJECT_ID(N'[dbo].[Compras]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Compras];
GO
IF OBJECT_ID(N'[dbo].[PuntoCompras]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PuntoCompras];
GO
IF OBJECT_ID(N'[dbo].[Premios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Premios];
GO
IF OBJECT_ID(N'[dbo].[PremioXUsuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PremioXUsuarios];
GO
IF OBJECT_ID(N'[dbo].[Facturas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Facturas];
GO
IF OBJECT_ID(N'[dbo].[ItemFacturas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ItemFacturas];
GO
IF OBJECT_ID(N'[dbo].[Usuarios_Cliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios_Cliente];
GO
IF OBJECT_ID(N'[dbo].[Usuarios_Empresa]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios_Empresa];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Funcionalidades'
CREATE TABLE [dbo].[Funcionalidades] (
    [id] int IDENTITY(1,1) NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL
);
GO

-- Creating table 'FuncionalidadXRoles'
CREATE TABLE [dbo].[FuncionalidadXRoles] (
    [id] int  NOT NULL,
    [rolId] int  NOT NULL,
    [funcionalidadId] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(255)  NOT NULL,
    [activo] bit  NOT NULL,
    [eliminado] bit  NOT NULL
);
GO

-- Creating table 'RolXUsuarios'
CREATE TABLE [dbo].[RolXUsuarios] (
    [id] int  NOT NULL,
    [usuarioId] int  NOT NULL,
    [rolId] int  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [id] int IDENTITY(1,1) NOT NULL,
    [username] nvarchar(250)  NOT NULL,
    [password] nvarchar(250)  NOT NULL,
    [passwordAutogenerado] bit  NOT NULL,
    [activo] bit  NOT NULL,
    [intentos] int  NULL,
    [eliminado] bit  NOT NULL
);
GO

-- Creating table 'Domicilios'
CREATE TABLE [dbo].[Domicilios] (
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

-- Creating table 'Rubros'
CREATE TABLE [dbo].[Rubros] (
    [id] int IDENTITY(1,1) NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL
);
GO

-- Creating table 'GradoPublicaciones'
CREATE TABLE [dbo].[GradoPublicaciones] (
    [id] int IDENTITY(1,1) NOT NULL,
    [tipo] nvarchar(250)  NOT NULL,
    [porcentaje] float  NOT NULL
);
GO

-- Creating table 'TarjetaCreditos'
CREATE TABLE [dbo].[TarjetaCreditos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [clienteId] int  NOT NULL,
    [emisorId] int  NOT NULL,
    [propietario] nvarchar(250)  NOT NULL,
    [numero] nvarchar(50)  NOT NULL,
    [fechaVencimiento] datetime  NOT NULL
);
GO

-- Creating table 'EmisorTarjetas'
CREATE TABLE [dbo].[EmisorTarjetas] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Publicaciones'
CREATE TABLE [dbo].[Publicaciones] (
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

-- Creating table 'Compras'
CREATE TABLE [dbo].[Compras] (
    [id] int IDENTITY(1,1) NOT NULL,
    [publicacionId] int  NOT NULL,
    [fechaCompra] datetime  NOT NULL,
    [tarjetaId] int  NOT NULL,
    [clienteId] int  NOT NULL
);
GO

-- Creating table 'PuntoCompras'
CREATE TABLE [dbo].[PuntoCompras] (
    [id] int IDENTITY(1,1) NOT NULL,
    [clienteId] int  NOT NULL,
    [puntos] int  NOT NULL,
    [puntosVigentes] int  NOT NULL,
    [fechaVencimiento] datetime  NOT NULL,
    [Compra_id] int  NOT NULL
);
GO

-- Creating table 'Premios'
CREATE TABLE [dbo].[Premios] (
    [id] int IDENTITY(1,1) NOT NULL,
    [descripcion] nvarchar(250)  NOT NULL,
    [puntos] int  NOT NULL
);
GO

-- Creating table 'PremioXUsuarios'
CREATE TABLE [dbo].[PremioXUsuarios] (
    [id] int IDENTITY(1,1) NOT NULL,
    [clienteId] int  NOT NULL,
    [premioId] int  NOT NULL
);
GO

-- Creating table 'Facturas'
CREATE TABLE [dbo].[Facturas] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fecha] datetime  NOT NULL,
    [total] decimal(18,0)  NOT NULL,
    [comision] decimal(18,0)  NOT NULL,
    [empresaId] int  NOT NULL
);
GO

-- Creating table 'ItemFacturas'
CREATE TABLE [dbo].[ItemFacturas] (
    [id] int IDENTITY(1,1) NOT NULL,
    [facturaId] int  NOT NULL,
    [compraId] int  NOT NULL
);
GO

-- Creating table 'Usuarios_Cliente'
CREATE TABLE [dbo].[Usuarios_Cliente] (
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

-- Creating table 'Usuarios_Empresa'
CREATE TABLE [dbo].[Usuarios_Empresa] (
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

-- Creating primary key on [id] in table 'Funcionalidades'
ALTER TABLE [dbo].[Funcionalidades]
ADD CONSTRAINT [PK_Funcionalidades]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'FuncionalidadXRoles'
ALTER TABLE [dbo].[FuncionalidadXRoles]
ADD CONSTRAINT [PK_FuncionalidadXRoles]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'RolXUsuarios'
ALTER TABLE [dbo].[RolXUsuarios]
ADD CONSTRAINT [PK_RolXUsuarios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Domicilios'
ALTER TABLE [dbo].[Domicilios]
ADD CONSTRAINT [PK_Domicilios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Rubros'
ALTER TABLE [dbo].[Rubros]
ADD CONSTRAINT [PK_Rubros]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'GradoPublicaciones'
ALTER TABLE [dbo].[GradoPublicaciones]
ADD CONSTRAINT [PK_GradoPublicaciones]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'TarjetaCreditos'
ALTER TABLE [dbo].[TarjetaCreditos]
ADD CONSTRAINT [PK_TarjetaCreditos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'EmisorTarjetas'
ALTER TABLE [dbo].[EmisorTarjetas]
ADD CONSTRAINT [PK_EmisorTarjetas]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Publicaciones'
ALTER TABLE [dbo].[Publicaciones]
ADD CONSTRAINT [PK_Publicaciones]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Compras'
ALTER TABLE [dbo].[Compras]
ADD CONSTRAINT [PK_Compras]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'PuntoCompras'
ALTER TABLE [dbo].[PuntoCompras]
ADD CONSTRAINT [PK_PuntoCompras]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Premios'
ALTER TABLE [dbo].[Premios]
ADD CONSTRAINT [PK_Premios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'PremioXUsuarios'
ALTER TABLE [dbo].[PremioXUsuarios]
ADD CONSTRAINT [PK_PremioXUsuarios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Facturas'
ALTER TABLE [dbo].[Facturas]
ADD CONSTRAINT [PK_Facturas]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ItemFacturas'
ALTER TABLE [dbo].[ItemFacturas]
ADD CONSTRAINT [PK_ItemFacturas]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuarios_Cliente'
ALTER TABLE [dbo].[Usuarios_Cliente]
ADD CONSTRAINT [PK_Usuarios_Cliente]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuarios_Empresa'
ALTER TABLE [dbo].[Usuarios_Empresa]
ADD CONSTRAINT [PK_Usuarios_Empresa]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [clienteId] in table 'TarjetaCreditos'
ALTER TABLE [dbo].[TarjetaCreditos]
ADD CONSTRAINT [FK_ClienteTarjetaCredito]
    FOREIGN KEY ([clienteId])
    REFERENCES [dbo].[Usuarios_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClienteTarjetaCredito'
CREATE INDEX [IX_FK_ClienteTarjetaCredito]
ON [dbo].[TarjetaCreditos]
    ([clienteId]);
GO

-- Creating foreign key on [emisorId] in table 'TarjetaCreditos'
ALTER TABLE [dbo].[TarjetaCreditos]
ADD CONSTRAINT [FK_TarjetaCreditoEmisorTarjeta]
    FOREIGN KEY ([emisorId])
    REFERENCES [dbo].[EmisorTarjetas]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TarjetaCreditoEmisorTarjeta'
CREATE INDEX [IX_FK_TarjetaCreditoEmisorTarjeta]
ON [dbo].[TarjetaCreditos]
    ([emisorId]);
GO

-- Creating foreign key on [empresaId] in table 'Publicaciones'
ALTER TABLE [dbo].[Publicaciones]
ADD CONSTRAINT [FK_EmpresaPublicacion]
    FOREIGN KEY ([empresaId])
    REFERENCES [dbo].[Usuarios_Empresa]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpresaPublicacion'
CREATE INDEX [IX_FK_EmpresaPublicacion]
ON [dbo].[Publicaciones]
    ([empresaId]);
GO

-- Creating foreign key on [rubroId] in table 'Publicaciones'
ALTER TABLE [dbo].[Publicaciones]
ADD CONSTRAINT [FK_PublicacionRubro]
    FOREIGN KEY ([rubroId])
    REFERENCES [dbo].[Rubros]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PublicacionRubro'
CREATE INDEX [IX_FK_PublicacionRubro]
ON [dbo].[Publicaciones]
    ([rubroId]);
GO

-- Creating foreign key on [gradoId] in table 'Publicaciones'
ALTER TABLE [dbo].[Publicaciones]
ADD CONSTRAINT [FK_PublicacionGradoPublicacion]
    FOREIGN KEY ([gradoId])
    REFERENCES [dbo].[GradoPublicaciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PublicacionGradoPublicacion'
CREATE INDEX [IX_FK_PublicacionGradoPublicacion]
ON [dbo].[Publicaciones]
    ([gradoId]);
GO

-- Creating foreign key on [publicacionId] in table 'Compras'
ALTER TABLE [dbo].[Compras]
ADD CONSTRAINT [FK_CompraPublicacion]
    FOREIGN KEY ([publicacionId])
    REFERENCES [dbo].[Publicaciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraPublicacion'
CREATE INDEX [IX_FK_CompraPublicacion]
ON [dbo].[Compras]
    ([publicacionId]);
GO

-- Creating foreign key on [tarjetaId] in table 'Compras'
ALTER TABLE [dbo].[Compras]
ADD CONSTRAINT [FK_CompraTarjetaCredito]
    FOREIGN KEY ([tarjetaId])
    REFERENCES [dbo].[TarjetaCreditos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraTarjetaCredito'
CREATE INDEX [IX_FK_CompraTarjetaCredito]
ON [dbo].[Compras]
    ([tarjetaId]);
GO

-- Creating foreign key on [clienteId] in table 'PuntoCompras'
ALTER TABLE [dbo].[PuntoCompras]
ADD CONSTRAINT [FK_ClientePuntos]
    FOREIGN KEY ([clienteId])
    REFERENCES [dbo].[Usuarios_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientePuntos'
CREATE INDEX [IX_FK_ClientePuntos]
ON [dbo].[PuntoCompras]
    ([clienteId]);
GO

-- Creating foreign key on [clienteId] in table 'Compras'
ALTER TABLE [dbo].[Compras]
ADD CONSTRAINT [FK_CompraCliente]
    FOREIGN KEY ([clienteId])
    REFERENCES [dbo].[Usuarios_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraCliente'
CREATE INDEX [IX_FK_CompraCliente]
ON [dbo].[Compras]
    ([clienteId]);
GO

-- Creating foreign key on [clienteId] in table 'PremioXUsuarios'
ALTER TABLE [dbo].[PremioXUsuarios]
ADD CONSTRAINT [FK_ClientePremioUsuario]
    FOREIGN KEY ([clienteId])
    REFERENCES [dbo].[Usuarios_Cliente]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientePremioUsuario'
CREATE INDEX [IX_FK_ClientePremioUsuario]
ON [dbo].[PremioXUsuarios]
    ([clienteId]);
GO

-- Creating foreign key on [premioId] in table 'PremioXUsuarios'
ALTER TABLE [dbo].[PremioXUsuarios]
ADD CONSTRAINT [FK_PremioXUsuarioPremio]
    FOREIGN KEY ([premioId])
    REFERENCES [dbo].[Premios]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PremioXUsuarioPremio'
CREATE INDEX [IX_FK_PremioXUsuarioPremio]
ON [dbo].[PremioXUsuarios]
    ([premioId]);
GO

-- Creating foreign key on [facturaId] in table 'ItemFacturas'
ALTER TABLE [dbo].[ItemFacturas]
ADD CONSTRAINT [FK_FacturaItemFactura]
    FOREIGN KEY ([facturaId])
    REFERENCES [dbo].[Facturas]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FacturaItemFactura'
CREATE INDEX [IX_FK_FacturaItemFactura]
ON [dbo].[ItemFacturas]
    ([facturaId]);
GO

-- Creating foreign key on [compraId] in table 'ItemFacturas'
ALTER TABLE [dbo].[ItemFacturas]
ADD CONSTRAINT [FK_CompraItemFactura]
    FOREIGN KEY ([compraId])
    REFERENCES [dbo].[Compras]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CompraItemFactura'
CREATE INDEX [IX_FK_CompraItemFactura]
ON [dbo].[ItemFacturas]
    ([compraId]);
GO

-- Creating foreign key on [empresaId] in table 'Facturas'
ALTER TABLE [dbo].[Facturas]
ADD CONSTRAINT [FK_EmpresaFactura]
    FOREIGN KEY ([empresaId])
    REFERENCES [dbo].[Usuarios_Empresa]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpresaFactura'
CREATE INDEX [IX_FK_EmpresaFactura]
ON [dbo].[Facturas]
    ([empresaId]);
GO

-- Creating foreign key on [Usuario_id] in table 'Domicilios'
ALTER TABLE [dbo].[Domicilios]
ADD CONSTRAINT [FK_DomicilioUsuario]
    FOREIGN KEY ([Usuario_id])
    REFERENCES [dbo].[Usuarios]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DomicilioUsuario'
CREATE INDEX [IX_FK_DomicilioUsuario]
ON [dbo].[Domicilios]
    ([Usuario_id]);
GO

-- Creating foreign key on [usuarioId] in table 'RolXUsuarios'
ALTER TABLE [dbo].[RolXUsuarios]
ADD CONSTRAINT [FK_UsuarioRolXUsuario]
    FOREIGN KEY ([usuarioId])
    REFERENCES [dbo].[Usuarios]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioRolXUsuario'
CREATE INDEX [IX_FK_UsuarioRolXUsuario]
ON [dbo].[RolXUsuarios]
    ([usuarioId]);
GO

-- Creating foreign key on [rolId] in table 'RolXUsuarios'
ALTER TABLE [dbo].[RolXUsuarios]
ADD CONSTRAINT [FK_RolXUsuarioRol]
    FOREIGN KEY ([rolId])
    REFERENCES [dbo].[Roles]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolXUsuarioRol'
CREATE INDEX [IX_FK_RolXUsuarioRol]
ON [dbo].[RolXUsuarios]
    ([rolId]);
GO

-- Creating foreign key on [Compra_id] in table 'PuntoCompras'
ALTER TABLE [dbo].[PuntoCompras]
ADD CONSTRAINT [FK_PuntoXCompra]
    FOREIGN KEY ([Compra_id])
    REFERENCES [dbo].[Compras]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PuntoXCompra'
CREATE INDEX [IX_FK_PuntoXCompra]
ON [dbo].[PuntoCompras]
    ([Compra_id]);
GO

-- Creating foreign key on [rolId] in table 'FuncionalidadXRoles'
ALTER TABLE [dbo].[FuncionalidadXRoles]
ADD CONSTRAINT [FK_RolFuncionalidadXRol]
    FOREIGN KEY ([rolId])
    REFERENCES [dbo].[Roles]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolFuncionalidadXRol'
CREATE INDEX [IX_FK_RolFuncionalidadXRol]
ON [dbo].[FuncionalidadXRoles]
    ([rolId]);
GO

-- Creating foreign key on [funcionalidadId] in table 'FuncionalidadXRoles'
ALTER TABLE [dbo].[FuncionalidadXRoles]
ADD CONSTRAINT [FK_FuncionalidadXRolFuncionalidad]
    FOREIGN KEY ([funcionalidadId])
    REFERENCES [dbo].[Funcionalidades]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionalidadXRolFuncionalidad'
CREATE INDEX [IX_FK_FuncionalidadXRolFuncionalidad]
ON [dbo].[FuncionalidadXRoles]
    ([funcionalidadId]);
GO

-- Creating foreign key on [id] in table 'Usuarios_Cliente'
ALTER TABLE [dbo].[Usuarios_Cliente]
ADD CONSTRAINT [FK_Cliente_inherits_Usuario]
    FOREIGN KEY ([id])
    REFERENCES [dbo].[Usuarios]
        ([id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [id] in table 'Usuarios_Empresa'
ALTER TABLE [dbo].[Usuarios_Empresa]
ADD CONSTRAINT [FK_Empresa_inherits_Usuario]
    FOREIGN KEY ([id])
    REFERENCES [dbo].[Usuarios]
        ([id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------