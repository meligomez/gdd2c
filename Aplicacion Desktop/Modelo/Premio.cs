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
    
    public partial class Premio
    {
        public Premio()
        {
            this.PremioXUsuarios = new HashSet<PremioXUsuario>();
        }
    
        public int id { get; set; }
        public string descripcion { get; set; }
        public int puntos { get; set; }
        public int clienteId { get; set; }
    
        public virtual ICollection<PremioXUsuario> PremioXUsuarios { get; set; }
    }
}
