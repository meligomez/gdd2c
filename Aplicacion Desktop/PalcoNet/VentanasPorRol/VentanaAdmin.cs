using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PalcoNet.Abm_Cliente;
using PalcoNet.Abm_Empresa_Espectaculo;
using PalcoNet.Canje_Puntos;
using PalcoNet.Comprar;
using PalcoNet.Editar_Publicacion;
using PalcoNet.Generar_Publicacion;
using PalcoNet.Generar_Rendicion_Comisiones;
using PalcoNet.Historial_Cliente;
using PalcoNet.Listado_Estadistico;
using PalcoNet.Registro_de_Usuario;

namespace PalcoNet.VentanasPorRol
{
	public partial class VentanaAdmin : Form
	{
		public VentanaAdmin()
		{
			//recibir por parametro el objeto del usuario logueado
			//asi puedo ejecutar un SP para encontrar el rol
			//y asi aplicar la funcion que se oculte segun el rol
			InitializeComponent();
			AplicarSeguridad();
		}
		//en el futuro debe recibir un rol
		private void AplicarSeguridad()
		{

			//if (!Usuario.IsAdmin())
			//{

				//btngrabar.Enable = false;

				//cmbproductos.Enable = false;

				menuStrip1.Items.Remove(menuABMCliente);

				menuStrip1.Items.Remove(menuABMEmpresa);

			//}

		}
		private void VentanaAdmin_Load(object sender, EventArgs e)
		{

		}

		private void label3_Click(object sender, EventArgs e)
		{

		}

		private void btnSalir_Click(object sender, EventArgs e)
		{
			this.Close();
		}
		

		private void altaUsuario_Click(object sender, EventArgs e)
		{
			UsuarioAlta altaUser = new UsuarioAlta();
			altaUser.Show(this);
			this.Hide();
		}
		private void altaCliente_Click(object sender, EventArgs e)
		{
			AltaCliente altaC = new AltaCliente();
			altaC.Show();
			this.Hide();
		}
		private void bajaCliente_Click(object sender, EventArgs e)
		{
			EliminarCliente eliminarC = new EliminarCliente();
			eliminarC.Show();
			this.Hide();
		}
		private void modificacionCliente_Click(object sender, EventArgs e)
		{
			ModificacionCliente modifC = new ModificacionCliente();
			modifC.Show();
			this.Hide();
		}
		private void altaEmpresa_Click(object sender, EventArgs e)
		{
			AltaEmpresa altaEmp = new AltaEmpresa();
			altaEmp.Show();
			this.Hide();
		}
		private void modificacionEmpresa_Click(object sender, EventArgs e)
		{
			ModificacionEmpresa modifEmp = new ModificacionEmpresa();
			modifEmp.Show();
			this.Hide();
		}
		private void bajaEmpresa_Click(object sender, EventArgs e)
		{
			EliminarEmpresa eliminarEmp = new EliminarEmpresa();
			eliminarEmp.Show();
			this.Hide();
		}
		private void generarPublicacion_Click(object sender, EventArgs e)
		{
			GenerarPublicacion generarPubli = new GenerarPublicacion();
			generarPubli.Show();
			this.Hide();
		}
		private void editarPublicacion_Click(object sender, EventArgs e)
		{
			EditarPublicacion editPublic = new EditarPublicacion();
			editPublic.Show();
			this.Hide();
		}
		private void abmCategoria_Click(object sender, EventArgs e)
		{
			//Comprar comp = new Comprar();
			//comp.Show();
			MessageBox.Show("You are selected Comprar ");
			this.Hide();
		}
		private void abmGradoPublicacion_Click(object sender, EventArgs e)
		{
			//Comprar comp = new Comprar();
			//comp.Show();
			MessageBox.Show("You are selected Comprar ");
			this.Hide();
		}
		private void comprar_Click(object sender, EventArgs e)
		{
			//Comprar comp = new Comprar();
			//comp.Show();
			MessageBox.Show("You are selected Comprar ");
			this.Hide();
		}
		private void historialCliente_Click(object sender, EventArgs e)
		{
			HistorialCliente histCli = new HistorialCliente();
			histCli.Show();
			this.Hide();
		}
		private void canjePuntos_Click(object sender, EventArgs e)
		{
			CanjePuntos canje = new CanjePuntos();
			canje.Show();
			this.Hide();
		}
		private void generarPago_Click(object sender, EventArgs e)
		{
			GenerarRendicionComisiones rendicion = new GenerarRendicionComisiones();
			rendicion.Show();
			MessageBox.Show("You are selected Comprar ");
			this.Hide();
		}
		private void listadoEstadistico_Click(object sender, EventArgs e)
		{
			ListadoEstadistico listadoEst = new ListadoEstadistico();
			listadoEst.Show();
			MessageBox.Show("You are selected Comprar ");
			this.Hide();
		}
		
		private void label1_Click(object sender, EventArgs e)
		{

		}

		private void menuRegistroUsuario_Click(object sender, EventArgs e)
		{

		}
	}
}
