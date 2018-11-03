using Modelo.Base;
using Modelo.Comun;
using System;
using System.Collections.Generic;
using System.Data;
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

		public DataTable ejemplo()
		{
			DaoSP dao = new DaoSP();
			DataTable dt = new DataTable();
			dt=dao.ConsultarConQuery("Select nombre from dropeadores.Rol where Id_Rol="+1);
			return dt;
		}
		//Aca queria buscar el rol logueado.. NO CREE EL SP.
		//public string obtenerRolDelUser(string username)
		//{
		//	string rol;
		//	try
		//	{
		//		DaoSP daoSP = new DaoSP();
		//		DataTable dt;
		//		dt = daoSP.ObtenerDatosSP("obtenerRolDelUser", username);
		//		return rol;
		//	}
		//	catch (Exception ex)
		//	{

		//		throw ex;
		//	}
		//}
	}

}
