using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PalcoNet.Registro_de_Usuario
{
    public partial class UsuarioAlta : Form
    {
        public UsuarioAlta()
        {
            InitializeComponent();
        }

		private void UsuarioAlta_Load(object sender, EventArgs e)
		{

		}
		private void btnGuardar_Click(object sender, EventArgs e)
		{
			//try
			//{
			//	if (todosCamposCompletos())
			//	{
			//		Usuario usuario = new Usuario();
			//		usuario.password = txtContraseña.Text;
			//		usuario.nombre = txtNombre.Text;
			//		usuario.apellido = txtApellido.Text;
			//		usuario.Mail = txtMail.Text;
			//		usuario.tipoDocumentoId = cbxTipoDocumento.SelectedIndex;
			//		usuario.Fecha_nacimiento_struct = dtpFechaNacimiento.Value;
			//		usuario.numDocu = int.Parse(txtNroDoc.Text);
			//		UsuarioService service = new UsuarioService();
			//		int resp = service.altaUsuario(usuario);
			//		if (resp == 0)
			//		{
			//			MessageBox.Show("Error al conectarse con la DB. No se ha creado el Usuario.", "Error al crear Nuevo Usuario",
			//			MessageBoxButtons.OK, MessageBoxIcon.Error);
			//			return;
			//		}
			//		MessageBox.Show("Usuario " + txtNombre.Text + " creado satisfactoriamente.", "Alta de Usuario",
			//		MessageBoxButtons.OK);
			//		new UsuarioMain().Show();
			//		this.Close();
			//	}
			//}
			//catch (Exception ex)
			//{
			//	MessageBox.Show("Error: " + ex.Message, "ERROR", MessageBoxButtons.OK);
			//}
		}

		private void cancelarBtn_Click(object sender, EventArgs e)
		{
			this.Hide();
		}
	}
}
