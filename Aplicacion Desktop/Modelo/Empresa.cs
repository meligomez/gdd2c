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
    
    public partial class Empresa : Usuario
    {
        public Empresa()
        {
            this.Publicaciones = new HashSet<Publicacion>();
        }
    
        public string cuit { get; set; }
        public string mail { get; set; }
        public Nullable<decimal> telefono { get; set; }
        public string razonSocial { get; set; }
    
        public virtual ICollection<Publicacion> Publicaciones { get; set; }
    }
}
