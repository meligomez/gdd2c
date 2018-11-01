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

namespace PalcoNet.Abm_Cliente
{
	public partial class AltaCliente : Form
	{
		public AltaCliente()
		{
			InitializeComponent();
		}

		private void groupBox1_Enter(object sender, EventArgs e)
		{

		}

		private void label5_Click(object sender, EventArgs e)
		{

		}

		private void textDireccion_TextChanged(object sender, EventArgs e)
		{

		}

		private void label13_Click(object sender, EventArgs e)
		{

		}

		private void AltaCliente_Load(object sender, EventArgs e)
		{

		}

		private void btnGuardar_Click(object sender, EventArgs e)
		{
			try
			{
				if (todosCamposCompletos()) {
					Cliente cli = new Cliente();
					cli.Cli_Apellido = textApellido.Text;
					cli.Cli_Nombre = textNombre.Text;
					cli.Cli_Dni = int.Parse(textNroIdentificacion.Text);
					int resp = cli.Alta();
					if (resp == 0)
					{
						MessageBox.Show("Error al conectarse con la DB. No se ha creado el Usuario.", "Error al crear Nuevo Usuario",
						MessageBoxButtons.OK, MessageBoxIcon.Error);
						return;
					}
				}
				
				MessageBox.Show("Cliente: " + textNombre.Text + " creado satisfactoriamente.", "Alta de Usuario",
				MessageBoxButtons.OK);
				//new UsuarioMain().Show();
				//new panelContenedor().Show();
				//this.Close();
			}
			catch (Exception ex)
			{
				MessageBox.Show("Error: " + ex.Message, "ERROR", MessageBoxButtons.OK);
			}
}
		private bool todosCamposCompletos()
		{
			//if (textNombre.Text.Trim() == "")
			//{
			//	MensajesToolTip.showToolTip(textNombre.Text, textNombre.Location);
			//	return false;
			//}
			//if (txtApellido.Text.Trim() == "")
			//{
			//	MensajesToolTip.showToolTip("Ingrese un apellido.", txtApellido, txtApellido.Location);
			//	return false;
			//}
			//if (txtMail.Text.Trim() == "")
			//{
			//	MensajesToolTip.showToolTip("Ingrese un mail.", txtMail, txtMail.Location);
			//	return false;
			//}
			//if (txtContraseña.Text.Trim() == "")
			//{
			//	//MensajesToolTip.showToolTip("Ingrese una contraseña.", txtContraseña, txtContraseña.Location);
			//	return false;
			//}
			//if (dtpFechaNacimiento.Text.Trim() == "" || dtpFechaNacimiento.Value == null)
			//{
			//	//MensajesToolTip.showToolTip("Ingrese una fecha de nacimiento.", dtpFechaNacimiento, dtpFechaNacimiento.Location);
			//	return false;
			//}
			return true;
		}
	}
}
