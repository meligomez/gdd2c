using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo.Dominio
{
    public class Empresa
    {
       
        public string Empresa_Cuit { get; set; }
        public string Empresa_mail { get; set; }
        public int Empresa_telefono { get; set; }
        public string Empresa_razon_social { get; set; }
        public int Empresa_domicilio { get; set; }
        public bool Empresa_estado { get; set; }

        public Domicilio Empresa_Dom { get; set; }
  
    }
}
