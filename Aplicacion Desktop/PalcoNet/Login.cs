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

namespace PalcoNet
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

		private void pictureBox1_Click(object sender, EventArgs e)
		{

		}

		private void Login_Load(object sender, EventArgs e)
		{

		}

		private void pictureBox1_Click_1(object sender, EventArgs e)
		{

		}

		private void label3_Click(object sender, EventArgs e)
		{

		}

		private void button1_Click(object sender, EventArgs e)
		{
			this.Close();
		}

		private void loginBtn_Click(object sender, EventArgs e)
		{
			//Validar psw y contrasenia ver 3 intentos fallidos
			//if (1==1)
			//{
				VentanaAdmin vgral = new VentanaAdmin();
				vgral.Show();
				this.Hide();
			//}
			//else
			//{
			//	//MessageBox.Show("Error, valide los datos");
			//}
		}
	}
}
