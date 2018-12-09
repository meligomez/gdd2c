﻿using Modelo.Base;
using Modelo.Comun;
using Modelo.Dominio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Comprar
{
    public partial class ComprarPPAL : Form
    {
        private int paginaActual;
        private bool CategoriaCargada;
        private bool UbicacionCargada;
        private DateTime fecDesde, fecHasta;
        List<String> listaCategorias = new List<String>();
        List<String> IDSeleccionados;
        List<String> IDs = new List<String>();
        ConfigGlobal fech = new ConfigGlobal();
        Usuario usuario;
        

        //*** paginacion ***//
        private int totalVistoPorPagina = 10;

        public ComprarPPAL(Usuario user)
        {
            InitializeComponent();
            usuario = user;
            DaoSP tj = new DaoSP();
            DataTable dt = new DataTable();
            string medioDePago="";
            dt = tj.ConsultarConQuery("select t.tipo as 'tipoTarjeta' from dropeadores.Cliente c join dropeadores.TarjetaCredito t on (t.clieteId=c.numeroDocumento) where c.numeroDocumento=" + usuario.cliente.numeroDocumento);
            foreach (DataRow row in dt.Rows)
            {
                medioDePago = Convert.ToString(row["tipoTarjeta"]);
            }
            labelMedioPago.Text = medioDePago.ToString();
        }

      

        private void ComprarPPAL_Load(object sender, EventArgs e)
        {
            cargarTabla();
        }


        public void CompletarCategoríasSeleccionadas(List<String> CatElegidas)
        {
            labelCategorias.Text = "";
            listaCategorias = CatElegidas;
            for (int i = 0; i < CatElegidas.Count(); i++)
            {
                 labelCategorias.Text += CatElegidas[i] + "  ";
            }
            CategoriaCargada = true;

        }
       
        private void buttonCategoria_Click(object sender, EventArgs e)
        {
            ComprarPPAL comprar = this;
            SeleccionCategorias cate = new SeleccionCategorias(labelCategorias.Text, comprar);
            cate.Show();  
        }

      
        private void btnBuscar_Click(object sender, EventArgs e)
        {


            if (dateTimePickerDesde.Value.Date > dateTimePickerHasta.Value.Date)
            {
                MessageBox.Show("La segunda fecha no puede ser inferior a la primera \nFECHA 1:" + dateTimePickerDesde.Text + "\nFECHA 2:" + dateTimePickerHasta.Text);
                return;
            }
            DateTime hoy = DateTime.Today;
            if (hoy > dateTimePickerDesde.Value.Date)
            {
                MessageBox.Show("La fecha inicial no puede ser menor que la actual");
                return;
            }


            DataTable respuesta = FiltrarPublicacion(labelCategorias.Text, textDescripcion.Text, dateTimePickerDesde.Value, dateTimePickerHasta.Value, listaCategorias);
            dataGridViewCompras.DataSource = respuesta;
            if (dataGridViewCompras.CurrentRow == null)
            {

                MessageBox.Show("La empresa requerida no se encuentra.", "Baja de Empresa",
                   MessageBoxButtons.OK);

                //cargarTabla();
            }
          
        }


        private void cargarTabla()
        {

            DaoSP prueba = new DaoSP();

            CargarData.cargarGridView(dataGridViewCompras, prueba.ObtenerDatosSP("dropeadores.getTablaPublicacion",fech.getFechaSistema()));
        }

        private DataTable FiltrarPublicacion(string CatElegidas, string descripcion, DateTime fechaDesde, DateTime fechaHasta, List<String> listaCat)
        {
            try
            {
                 DaoSP dao = new DaoSP();
            DataTable tabla_Publicacion=new DataTable();
            
            //Publicacion pub = new Publicacion();

            tabla_Publicacion = dao.ObtenerDatosSP("dropeadores.getPublicacion",fech.getFechaSistema(),fechaDesde,fechaHasta);

            if (tabla_Publicacion == null ) {
                cargarTabla();
            }
            
            var final_rol = "";
            var posFiltro = true;
            var filtrosBusqueda = new List<string>();
            var filtrosCategoria = new List<string>();
            if (descripcion != "") filtrosBusqueda.Add("DESCRIPCION LIKE '%" + descripcion + "%'");
            final_rol = "(";
            for (int i = 0; i < listaCat.Count(); i++)
            {

                filtrosCategoria.Add("RUBRO_DESCRIPCION LIKE '%" + listaCat[i] + "%'");

            }
            foreach (var filtro in filtrosCategoria)
            {
                if (!posFiltro)
                    final_rol += " OR " + filtro;
                else
                {
                    final_rol += filtro;
                    posFiltro = false;
                }
            }
            foreach (var filtro in filtrosBusqueda)
            {
                if (!posFiltro)
                    final_rol += " )AND " + filtro;
                else
                {
                    final_rol += filtro;
                    posFiltro = false;
                }
            }
            //int cant = emp.existEmpresa(razonSocial, cuit, mail);
            if (tabla_Publicacion != null)
            {

                // error cuando probas por filtrar por 2 campos y alguno es incorrecto
                tabla_Publicacion.DefaultView.RowFilter = final_rol;
            }
            else
            {
                tabla_Publicacion = null;
                dataGridViewCompras.DataSource = null;
            }
            return tabla_Publicacion;
            }
            catch (Exception ex )
            {
                
                throw ex;
            }
        }
        private void buttonPAGAR_Click(object sender, EventArgs e)
        {
            if (dataGridViewCompras.Rows.Count != 0)
            {
                String ID = dataGridViewCompras.SelectedRows[0].Cells[0].Value.ToString();
                IDSeleccionados.Add(ID);
                MessageBox.Show("La ubicación con ID " + dataGridViewCompras.SelectedRows[0].Cells[0].Value.ToString() + " fue añadida");
                int rowindex = dataGridViewCompras.CurrentCell.RowIndex;
                dataGridViewCompras.Rows.RemoveAt(rowindex);
            }
            if (!IDSeleccionados.Any())
            {
                MessageBox.Show("No has seleccionado nada para comprar");
                return;
            }
            if (tieneTarjeta(usuario)>0)
            {
                cargarDatosDeCompra();

            }

        }
        public void queryComprar()
        {
            DaoSP dao = new DaoSP();
            DataTable datosPKCliente = queryObtenerPKsDatosCliente();
            String tipoDoc = datosPKCliente.Rows[0]["TIPO DOCUMENTO"].ToString();
            int nroDoc = Convert.ToInt32(datosPKCliente.Rows[0]["NUMERO DOCUMENTO"].ToString());
            int tajID = Convert.ToInt32(datosPKCliente.Rows[0]["TARJETA"].ToString());
            int cantidadUbicacionesCompradas = IDs.Count;
            if (dao.EjecutarSP("dropeadores.insertCompra", tipoDoc, nroDoc, ", GETDATE(), ", tajID, cantidadUbicacionesCompradas, lblImporte.Text) > 0)
            MessageBox.Show("La compra fue realizada con éxito");
        }

        public DataTable queryObtenerPKsDatosCliente()
        {
            DaoSP X = new DaoSP();
            return (X.ConsultarConQuery("SELECT tipoDocumento as 'TIPO DOCUMENTO', numeroDocumento as 'NUMERO DOCUMENTO',t.Id as 'TARJETA' FROM dropeadores.Cliente c join dropeadores.usuario u on (u.clienteId=c.numeroDocumento) join dropeadores.TarjetaCredito t on (t.clieteId=c.numeroDocumento) where Id = " + usuario.Id));
        }
        public void cargarDatosDeCompra()
        {
            queryComprar();
            insertarUbicacionXPublCompradoYActualizarCompra();
            //obtenerValorPuntajeCompra();
        }

        private void insertarUbicacionXPublCompradoYActualizarCompra()
        {
            int i = 0;
            for (i = 0; i < dataGridViewCompras.RowCount; i++)
            {
                //******* Buscar la ubicacion de esa publicacion y cambiar el estado****//
                //*******Vuelvo a actualizar COMPRAS con el ID de Ubicacion*****//

            //    String queryUBIXPUBLCOMPRADO = "INSERT INTO [SQLEADOS].ubicacionesXPublicidadComprada (ubxpcomp_compra, ubxpcom_ubicacionXPublicidad) SELECT DISTINCT c.compra_id, " + dataGridView1.Rows[i].Cells[0].Value.ToString() + " FROM SQLEADOS.Compra c  where c.compra_id = (Select TOP 1 compra_id FROM SQLEADOS.Compra order by compra_id DESC)";
            //    DBConsulta.realizarUpdateConQuery(queryUBIXPUBLCOMPRADO);

            //    String queryActualizarCompra = "UPDATE c SET c.compra_ubiXpubli = u.ubxpcomp_id FROM SQLEADOS.Compra c INNER JOIN SQLEADOS.ubicacionesXPublicidadComprada u ON u.ubxpcomp_compra = c.compra_id WHERE c.compra_id = (Select TOP 1 compra_id FROM SQLEADOS.Compra order by compra_id DESC)";
            //    DBConsulta.realizarUpdateConQuery(queryActualizarCompra);
            }
        }
        private int tieneTarjeta(Usuario user)
        {
            DataTable dt, dr, da = new DataTable();
            int cant = 0;
            DaoSP dao = new DaoSP();
            
            dt = dao.ConsultarConQuery("select count(clieteId) from dropeadores.TarjetaCredito t join dropeadores.Cliente c on(c.numeroDocumento=t.clieteId) join dropeadores.Usuario u on (u.clienteId=c.numeroDocumento) where u.username='"+user.username+"'");
            foreach (DataRow row in dt.Rows)
            {
                cant = Convert.ToInt32(row["cantidad"]);
            }
           
            return cant;
       }
        private void labelubicaciones_Click(object sender, EventArgs e)
        {

        }

        private void labelCategorias_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {
          
        }

        private void dataGridViewCompras_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnNuevoMedioPago_Click(object sender, EventArgs e)
        {

        }

    }
}
