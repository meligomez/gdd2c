//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class TarjetaCredito
    {
        public int Id { get; set; }
        public int clienteId { get; set; }
        public int emisorId { get; set; }
        public string propietario { get; set; }
        public string numero { get; set; }
        public System.DateTime fechaVencimiento { get; set; }
    
        public virtual Cliente Cliente { get; set; }
        public virtual EmisorTarjeta EmisorTarjeta { get; set; }
    }
}