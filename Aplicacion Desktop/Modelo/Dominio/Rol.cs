using Modelo.Comun;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Modelo.Dominio
{
	public class Rol
	{
		#region Atributos
		public int RolId { get; set; }
		private string nombreRol = "''";
		private bool habilitado = true;
		public bool Eliminado { get; set; }
		public DateTime? FechaEliminacion { get; set; }
		//private string usr = "''";
		#endregion
		public Rol()
		{
			this.Eliminado = false;
		}
		#region Propiedades
		public string NombreRol
		{
			get { return nombreRol; }
			set { nombreRol = value; }
		}
		public bool Habilitado
		{
			get { return habilitado; }
			set { habilitado = value; }
		}

		//public string Usr
		//{
		//    get { return usr; }
		//    set { usr = value; }
		//}
		#endregion
	}
}
