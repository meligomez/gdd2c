using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using Modelo.Auxiliares;
using System.Net.Mail;
using Modelo.Dominio;

namespace Modelo.Dominio
{
	public class Usuario
	{
		#region Atributos
		public int Id { get; set; }
		public string username { get; set; }
		public string password { get; set; } //password encriptado con SHA256
		public string usuarioTipo { get; set; }
		#endregion

		#region Propiedades
		//public string Mail
		//{
		//	get
		//	{
		//		if (mail != null)
		//			return mail.Address;
		//		else
		//			return "''";
		//	}
		//	set
		//	{
		//		if (value != "")
		//			mail = new MailAddress(value);
		//	}
		//}
		//public int Telefono
		//{
		//	get { return _telefono; }
		//	set { _telefono = value; }
		//}
		//public string Fecha_nacimiento
		//      {
		//          get { return ((DateTime)fechaNacimiento).ToString("yyyyMMdd"); }
		//          set { fechaNacimiento = DateTime.Parse(value); }
		//      }

		//public DateTime? Fecha_nacimiento_struct
		//{
		//	get { return fechaNacimiento; }
		//	set { fechaNacimiento = value; }
		//}

		#endregion

		#region Constructor
		//public Usuario()
		//{
		//	this.eliminado = false;
		//	this.habilitado = true;
		//}
		#endregion

		//public bool estoyInhabilitado() { return habilitado; }
	}
}
