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
using Modelo.Dominio;
using Modelo.Servicio;
using Modelo;
using PalcoNet.Abm_Cliente;

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
			try
			{
				if (todosCamposCompletos())
				{
					//Usuario usuario = new Usuario();
					//usuario.username = textBox1.Text;
					//usuario.password = textBox2.Text;
					//UsuarioService service = new UsuarioService();
					//int resp = service.login(usuario);
					//if (resp == 0)
					//{
					//	MessageBox.Show("Error al conectarse con la DB. No se pudo realizar el Login.", "No se pudo realizar el Login",
					//	MessageBoxButtons.OK, MessageBoxIcon.Error);
					//}
					//panelContenedor vgral = new panelContenedor();
					//vgral.Show();
					//this.Hide();

					//this.Close();
					
				}
			}
			catch (Exception ex)
			{
				MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
        private bool todosCamposCompletos()
        {
            if (textBox1.Text.Trim() == "")
            {
                //MensajesToolTip.showToolTip("Ingrese un nombre.", textBox1, textBox1.Location);
                MessageBox.Show("Error, valide los datos");
                return false;
            }
            if (textBox2.Text.Trim() == "")
            {
                //MensajesToolTip.showToolTip("Ingrese un nombre.", textBox1, textBox1.Location);
                MessageBox.Show("Error, valide la contraseña");
                return false;
            }
            return true;
        }

		private void RegistrobtnCli_Click(object sender, EventArgs e)
		{
			AltaCliente altaCliente = new AltaCliente();
			altaCliente.Show();
			this.Hide();
		}
	}
}
