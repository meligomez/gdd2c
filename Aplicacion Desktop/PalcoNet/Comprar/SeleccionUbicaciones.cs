using Modelo.Base;
using Modelo.Comun;
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
    public partial class SeleccionUbicaciones : Form
    {
        ComprarPPAL comp;
        String ubic;
       
        public SeleccionUbicaciones(String ubicacionesSelecionadas, ComprarPPAL compraPrincipal)
        {
            InitializeComponent();
            ubic = ubicacionesSelecionadas;
            comp=compraPrincipal;
        }
        private void cargarTabla()
        {
            DaoSP prueba = new DaoSP();
            CargarData.cargarGridView(dataGridViewUbicaciones, prueba.ConsultarConQuery("SELECT DISTINCT ubicacion_Tipo_Descripcion FROM dropeadores.Ubicacion"));
        }
        private void SeleccionUbicaciones_Load(object sender, EventArgs e)
        {
            DaoSP X = new DaoSP();
            configuracionGrilla(X.ConsultarConQuery("SELECT DISTINCT ubicacion_Tipo_Descripcion FROM dropeadores.Ubicacion"));
        }
        private void configuracionGrilla(DataTable dt)
        {
            dataGridViewUbicaciones.DataSource = dt;

            labelUbicaciones.Text += ubic;
            return;
        }
        private void btnBuscar_Click(object sender, EventArgs e)
        {
          //  comp.CompletarUbicacionesSeleccionadas(labelUbicaciones.Text);
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int rowindex = dataGridViewUbicaciones.CurrentCell.RowIndex;
            int columnindex = dataGridViewUbicaciones.CurrentCell.ColumnIndex;

            if (!labelUbicaciones.Text.Contains(dataGridViewUbicaciones.Rows[rowindex].Cells[columnindex].Value.ToString()))
            {
                labelUbicaciones.Text += dataGridViewUbicaciones.Rows[rowindex].Cells[columnindex].Value.ToString() + ";";
            }
            //Elimina las categorías de la lista
            dataGridViewUbicaciones.Rows.RemoveAt(rowindex);
        }
    }
}
