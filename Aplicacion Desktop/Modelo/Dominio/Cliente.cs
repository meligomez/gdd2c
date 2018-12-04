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
        public int numeroDocumento { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string tipoDocumento { get; set; }
        public string cuil { get; set; }
        public string mail { get; set; }
        public bool estado { get; set; }
        public DateTime fechaNacimiento { get; set; }
        private DateTime? fecha_nacimiento = null;
        public DateTime fechaCreacion { get; set; }
		public int telefono { get; set; }

		public Domicilio Cli_Dir { get; set; }
        public Tarjeta Cli_Tar { get; set; }

        public string Fecha_nacimiento
        {
            get { return ((DateTime)fecha_nacimiento).ToString("yyyyMMdd"); }
            set { fecha_nacimiento = DateTime.Parse(value); }
        }
        public DateTime? Fecha_nacimiento_struct
        {
            get { return fecha_nacimiento; }
            set { fecha_nacimiento = value; }
        }

        public static bool actualizar(Empresa empresa_Seleccionada)
        {

            DaoSP dao = new DaoSP();
            DataTable dt = new DataTable();
            int IDempresa = 000000;

            string cuit = empresa_Seleccionada.Empresa_Cuit;
            string razonSocial = empresa_Seleccionada.Empresa_razon_social;
            string email = empresa_Seleccionada.Empresa_mail;
            int telefono = empresa_Seleccionada.Empresa_telefono;
            string calle = empresa_Seleccionada.Empresa_Dom.calle;
            int numero = empresa_Seleccionada.Empresa_Dom.numero;
            int piso = empresa_Seleccionada.Empresa_Dom.piso;
            string depto = empresa_Seleccionada.Empresa_Dom.dpto;
            string localidad = empresa_Seleccionada.Empresa_Dom.localidad;
            string ciudad = empresa_Seleccionada.Empresa_Dom.ciudad;
            int cp = empresa_Seleccionada.Empresa_Dom.cp;
            int campoBaja = (empresa_Seleccionada.Empresa_estado) ? 1 : 1;
            dt = dao.ConsultarConQuery("SELECT empresa_domicilio FROM dropeadores.Empresa WHERE empresa_Cuit like " + "'" + cuit + "'");
            foreach (DataRow row in dt.Rows)
            {
                IDempresa = Convert.ToInt32(row["empresa_domicilio"].ToString());
            }

            if (dao.EjecutarSP("dropeadores.updateDomicilioEmpresa", IDempresa, calle, numero, piso, depto, localidad, ciudad, cp) > 0)
            {
                if (dao.EjecutarSP("dropeadores.updateEmpresa", cuit, razonSocial, email, telefono, campoBaja) > 0)
                {

                    return true;

                }

            }

            return false;
        }


        internal int existEmpresa(string cuil, int numDni)
        {
         
            DataTable dt, dr, da = new DataTable();
            int cant = 0;
            DaoSP dao = new DaoSP();
            dt = dao.ConsultarConQuery("select count(c.numeroDocumento) as 'cantidad' from dropeadores.Cliente c where c.estado=1 and c.cuil LIKE" + "'" + cuil + "'");
            dr = dao.ConsultarConQuery("select count(c.numeroDocumento) as 'cantidad' from dropeadores.Cliente c where c.estado=1 and c.numeroDocumento=" + numDni);
            foreach (DataRow row in dt.Rows)
            {
                cant = Convert.ToInt32(row["cantidad"]);
            }
            foreach (DataRow row in dr.Rows)
            {
                cant = cant + Convert.ToInt32(row["cantidad"]);
            }
        
            return cant;
        
        }
    }


}
