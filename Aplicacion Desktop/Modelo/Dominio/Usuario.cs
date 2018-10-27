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
		public int usuarioId { get; set; }
		public string password { get; set; } //password encriptado con SHA256
		public string nombre { get; set; }
		public string apellido { get; set; }
		public int tipoDocumentoId { get; set; }
		public int numDocu { get; set; }
		private MailAddress mail = null;
		//private Documento documento;
		private int _telefono = -1;
		//private DireccionStruct direccion; //Direccion con formato
		private DateTime? fechaNacimiento { get; set; }
		public bool habilitado { get; set; }
		public Direccion direccion { get; set; }
		public IEnumerable<Rol> roles { get; set; }
		public bool eliminado { get; set; }
		public DateTime? fechaEliminacion { get; set; }
		#endregion

		#region Propiedades
		public string Mail
		{
			get
			{
				if (mail != null)
					return mail.Address;
				else
					return "''";
			}
			set
			{
				if (value != "")
					mail = new MailAddress(value);
			}
		}
		public int Telefono
		{
			get { return _telefono; }
			set { _telefono = value; }
		}
		//public string Fecha_nacimiento
		//      {
		//          get { return ((DateTime)fechaNacimiento).ToString("yyyyMMdd"); }
		//          set { fechaNacimiento = DateTime.Parse(value); }
		//      }

		public DateTime? Fecha_nacimiento_struct
		{
			get { return fechaNacimiento; }
			set { fechaNacimiento = value; }
		}

		#endregion

		#region Constructor
		public Usuario()
		{
			this.eliminado = false;
			this.habilitado = true;
		}
		#endregion

		public bool estoyInhabilitado() { return habilitado; }
	}
}
