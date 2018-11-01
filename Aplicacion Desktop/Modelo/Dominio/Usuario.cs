﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
//using Modelo.Auxiliares;
using System.Net.Mail;
using Modelo.Dominio;
using Modelo.Base;
using System.Data;

namespace Modelo.Dominio
{
	public class Usuario
	{
		#region Atributos
		public int Id { get; set; }
		public string username { get; set; }
		public string password { get; set; } //password encriptado con SHA256
		public Cliente cliente { get; set; }
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

		public int Alta()
		{
			try
			{
				DaoSP dao = new DaoSP();
				DataTable dt = new DataTable();
				Direccion dire = cliente.Cli_Dir;
				if(dao.EnviarDatosSP("dropeadores.Domicilio_Cli_Alta", dire.calle, dire.numero, dire.piso, dire.dpto, dire.localidad, dire.cp)>0)
				{
					dt = dao.ObtenerDatosSP("dropeadores.DireCli_ObtenerId");
					DataRow row = dt.Rows[0];
					int idDireClienteInsertado = int.Parse(row["Id"].ToString());
					if (dao.EnviarDatosSP("dropeadores.Cli_Alta", cliente.Cli_Nombre, cliente.Cli_Apellido, cliente.Cli_Dni, cliente.Cli_Mail, cliente.Cli_Fecha_Nac, cliente.Cli_CUIL, cliente.Cli_Telefono, idDireClienteInsertado) > 0)
					{

						dt = dao.ObtenerDatosSP("dropeadores.Cli_ObtenerId");

					}
					DataRow row2 = dt.Rows[0];
					int idClienteInsertado = int.Parse(row2["Id"].ToString());

					dao.EnviarDatosSP("dropeadores.Usuario_Alta", idClienteInsertado, this.username, this.password);
				}
				
				
				
				return 0;
			}
			catch (Exception ex)
			{
				return 0;
			}
		}
	}
}
