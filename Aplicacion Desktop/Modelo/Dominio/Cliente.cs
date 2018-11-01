using Modelo.Base;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo.Dominio
{
	public class Cliente
	{
		public int Id_Cliente { get; set; }
		public int Cli_Dni { get; set; }
		public string Cli_Apellido { get; set; }
		public string Cli_Nombre { get; set; }
		public DateTime Cli_Fecha_Nac { get; set; }
		public string Cli_Mail { get; set; }
		public int Cli_CUIL { get; set; }
		public int Cli_Telefono { get; set; }
		
		public Direccion Cli_Dir { get; set; }
	}
}
