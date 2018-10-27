using PalcoNet.VentanasPorRol;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Generar_Publicacion
{
    public partial class GenerarPublicacion : Form
    {
        public GenerarPublicacion()
        {
            InitializeComponent();
        }

		private void btnVolver_Click(object sender, EventArgs e)
		{
			this.Close();
			VentanaAdmin menu = new VentanaAdmin();
			menu.Show();
		}
	}
}
