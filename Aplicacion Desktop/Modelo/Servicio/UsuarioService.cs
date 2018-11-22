using Modelo.Base;
using Modelo.Comun;
using Modelo.Repositorio;
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
				user.password = HashHelpers.SHA256(user.password);
				//user.eliminado = false;
				//DaoSP dao = new DaoSP();
				//return dao.EnviarDatosSP("UsuarioAlta", passSHA256, user.userName);
				DaoObject daoObject = new DaoObject();
				return daoObject.Guardar(user);

			}
			catch (Exception ex)
			{ throw ex; }
		}
		public int editarUsuario(Usuario user)
		{
			try
			{
				DaoObject dao = new DaoObject();
				Usuario usuario = new Usuario();
				//usuario = dao.ObtenerUnObjeto<Usuario>(user.usuarioId);
				//usuario.username = user.username;
				return dao.Modificar(usuario);
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
					//nombre = dt.Columns["nombre"].ColumnName,
					//apellido = dt.Columns["apellido"].ColumnName,
					//numDocu = int.Parse(dt.Columns["numDocu"].ColumnName)
				};
			}
			catch (Exception ex)
			{

				throw ex;
			}
		}
		public Usuario obtenerUsuariosByName(string name)
		{
			try
			{
				DaoSP daoSP = new DaoSP();
				DataTable dt;
				dt = daoSP.ObtenerDatosSP("obtenerUsuarioByUsername", name);
				DataRow row = dt.Rows[0];
				Usuario u = new Usuario();
				return new Usuario()
				{
					username = row["username"].ToString(),
					password = row["password"].ToString(),
					cambioPsw = int.Parse(row["cambioPsw"].ToString()),
					creadoPor = row["creadoPor"].ToString()
				};
			}
			catch (Exception ex)
			{

				throw ex;
			}
		}
		
		public int login(Usuario user)
		{
			int ret = 0;
			try
			{

				DaoSP daoSP = new DaoSP();
				DataTable dt;
				string userN;
				string pass;
				userN = user.username;
				pass = user.password;
				dt = daoSP.ObtenerDatosSP("dropeadores.login", userN, pass, ret);
				DataRow row = dt.Rows[0];
				ret = int.Parse(row["ret"].ToString());
				return ret;
			}
			catch (Exception ex)
			{
				return ret;
			}

		}
		public int eliminarUsuarioLog(int id)
		{
			try
			{
				DaoObject dao = new DaoObject();
				Usuario usuario = new Usuario();
				usuario = dao.ObtenerUnObjeto<Usuario>(id);
				//usuario.eliminado = true;
				//usuario.fechaEliminacion = DateTime.Now;
				return dao.Modificar(usuario);
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public void PasarAInhabilitado(string username)
		{
			try
			{
				DaoSP daoSP = new DaoSP();
				DataTable dt;
				dt = daoSP.ObtenerDatosSP("dropeadores.pasarAInhabilitado", username);
			}
			catch (Exception ex)
			{ throw ex; }
		}
		//public static bool registrarIntentoFallido(string usr)
		//{
		//	return executeProcedure("intentoFallidoUsuario", usr);
		//}
	}
}
