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

		public int Alta() {
			try
			{
				DaoSP dao = new DaoSP();
				DataTable dt = new DataTable();
				if (dao.EnviarDatosSP("dropeadores.Cli_Alta", this.Cli_Nombre, this.Cli_Apellido, this.Cli_Dni) > 0)
				{

					dt = dao.ObtenerDatosSP("dropeadores.Cli_ObtenerId");

				}
				DataRow row = dt.Rows[0];
				int id =int.Parse(row["Id"].ToString());
				return id;
			}
			catch (Exception ex)
			{
				return 0;
			}
		}
	}
}
