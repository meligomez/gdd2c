﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Modelo
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Funcionalidad> Funcionalidades { get; set; }
        public DbSet<FuncionalidadXRol> FuncionalidadXRoles { get; set; }
        internal DbSet<Rol> Roles { get; set; }
        public DbSet<RolXUsuario> RolXUsuarios { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Domicilio> Domicilios { get; set; }
        public DbSet<Rubro> Rubros { get; set; }
        public DbSet<Grado> GradoPublicaciones { get; set; }
        public DbSet<TarjetaCredito> TarjetaCreditos { get; set; }
        public DbSet<EmisorTarjeta> EmisorTarjetas { get; set; }
        public DbSet<Publicacion> Publicaciones { get; set; }
        public DbSet<Compra> Compras { get; set; }
        public DbSet<PuntoCompra> PuntoCompras { get; set; }
        public DbSet<Premio> Premios { get; set; }
        public DbSet<PremioXUsuario> PremioXUsuarios { get; set; }
        public DbSet<Factura> Facturas { get; set; }
        public DbSet<ItemFactura> ItemFacturas { get; set; }
    }
}
