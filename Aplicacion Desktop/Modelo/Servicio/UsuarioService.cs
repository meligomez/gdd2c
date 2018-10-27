using Modelo.Base;
using Modelo.Comun;
using Modelo.Dominio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Modelo.Servicio
{
	public class UsuarioService
	{
		public int altaUsuario(Usuario user)
		{
			try
			{
				Seguridad seguridad = new Seguridad();
				string passSHA256 = seguridad.pasarASha256(user.password);
				DaoSP dao = new DaoSP();
				return dao.EnviarDatosSP("UsuarioAlta", passSHA256, user.nombre, user.apellido, user.tipoDocumentoId,
					user.numDocu, user.Mail, user.Telefono, user.Fecha_nacimiento_struct);
			}
			catch (Exception ex)
			{ throw ex; }
		}
		public int editarUsuario(Usuario user)
		{
			try
			{
				Seguridad seguridad = new Seguridad();
				string passSHA256 = seguridad.pasarASha256(user.password);
				DaoSP dao = new DaoSP();
				return dao.EnviarDatosSP("UsuarioEditar", passSHA256, user.nombre, user.apellido, user.tipoDocumentoId,
					user.numDocu, user.Mail, user.Telefono, user.Fecha_nacimiento_struct);
			}
			catch (Exception ex)
			{ throw ex; }
		}
		public DataTable obtenerUsuariosDt()
		{
			try
			{
				DaoSP daoSP = new DaoSP();
				return daoSP.ObtenerDatosSP("getUsuarios");
			}
			catch (Exception ex)
			{

				throw ex;
			}
		}
		public Usuario obtenerUsuariosById(int id)
		{
			try
			{
				DaoSP daoSP = new DaoSP();
				DataTable dt;
				dt = daoSP.ObtenerDatosSP("obtenerUsuarioById", id);
				return new Usuario()
				{
					nombre = dt.Columns["nombre"].ColumnName,
					apellido = dt.Columns["apellido"].ColumnName,
					numDocu = int.Parse(dt.Columns["numDocu"].ColumnName)
				};
			}
			catch (Exception ex)
			{

				throw ex;
			}
		}
		public int eliminarUsuarioLog(int id)
		{
			try
			{
				DaoObject dao = new DaoObject();
				Usuario usuario = new Usuario();
				usuario = dao.ObtenerUnObjeto<Usuario>(id);
				usuario.eliminado = true;
				usuario.fechaEliminacion = DateTime.Now;
				return dao.Modificar(usuario);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
	}
}
