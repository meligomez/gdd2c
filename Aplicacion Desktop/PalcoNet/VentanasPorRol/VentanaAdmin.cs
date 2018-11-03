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
	public partial class panelContenedor : Form
	{
		string rolLogueado;
		public Usuario userLog;
		public panelContenedor(Usuario userLogueado)
		{
			userLog = userLogueado;
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

				//menuStrip1.Items.Remove(menuABMCliente);

				//menuStrip1.Items.Remove(menuABMEmpresa);

			//}

		}
		// este es el formulario que se abria desde el menu del formulario MDI
		// Creando variable del formulario que contiene el menú

		//public void checkForm(Form frmHijo, Form frmPadre)
		//{
		//	bool cargado = false;
		//	foreach( Form llamado in frmPadre.MdiChildren)
		//	{
		//		if(llamado.Text == frmPadre.Text)
		//		{
		//			cargado = true;
		//			break;
		//		}
		//	}
		//	if( !cargado)
		//	{
		//		frmHijo.MdiParent = frmPadre;
		//		frmHijo.Show();
		//	}
		//}
		private void AbrirFormInPanel(object formHijo)
		{
			if (this.panel1.Controls.Count > 0)
				this.panel1.Controls.RemoveAt(0);
			Form fh = formHijo as Form;
			fh.TopLevel = false;
			fh.FormBorderStyle = FormBorderStyle.None;
			fh.Dock = DockStyle.Fill;
			this.panel1.Controls.Add(fh);
			this.panel1.Tag = fh;
			fh.Show();
		}
		private void VentanaAdmin_Load(object sender, EventArgs e)
		{

		}
		
		private void label3_Click(object sender, EventArgs e)
		{

		}


		private void iconMinimizar_Click(object sender, EventArgs e)
		{
			this.WindowState = FormWindowState.Minimized;
		}
		private void iconCerrar_Click(object sender, EventArgs e)
		{
			if (MessageBox.Show("Seguro que desea Cerrar Sesion?", "Alerta", MessageBoxButtons.YesNo) == DialogResult.Yes)
			{
				this.Hide();
				Login login = new Login();
				login.Show();
			}
			else
			{
				//tus codigos
			}
		}

		private void altaUsuario_Click(object sender, EventArgs e)
		{
			UsuarioAlta altaUser = new UsuarioAlta();
			altaUser.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(altaUser);
			//altaUser.Show(this);
			//checkForm(altaUser, this);
			//this.Hide();
		}
		private void altaCliente_Click(object sender, EventArgs e)
		{
			AltaCliente altaC = new AltaCliente("admin");
			altaC.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(altaC);
			//altaC.Show();
			//checkForm(altaC, this);
			//this.Hide();
		}
		private void mostrarlogoAlCerrarForm(object sender, FormClosedEventArgs e)
		{
			mostrarlogo();
		}
		private void mostrarlogo()
		{
			AbrirFormInPanel(new FormLogo());
		}

		private void bajaCliente_Click(object sender, EventArgs e)
		{
			EliminarCliente eliminarC = new EliminarCliente();
			eliminarC.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(eliminarC);
			//eliminarC.Show();
			//this.Hide();
		}
		private void modificacionCliente_Click(object sender, EventArgs e)
		{
			ModificacionCliente modifC = new ModificacionCliente();
			modifC.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(modifC);
			//modifC.Show();
			//this.Hide();
		}
		private void altaEmpresa_Click(object sender, EventArgs e)
		{
			AltaEmpresa altaEmp = new AltaEmpresa();
			altaEmp.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(altaEmp);
			//altaEmp.Show();
			//this.Hide();
		}
		private void modificacionEmpresa_Click(object sender, EventArgs e)
		{
			ModificacionEmpresa modifEmp = new ModificacionEmpresa();
			modifEmp.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(modifEmp);
			//modifEmp.Show();
			//this.Hide();
		}
		private void bajaEmpresa_Click(object sender, EventArgs e)
		{
			EliminarEmpresa eliminarEmp = new EliminarEmpresa();
			eliminarEmp.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(eliminarEmp);
			//eliminarEmp.Show();
			//this.Hide();
		}
		private void generarPublicacion_Click(object sender, EventArgs e)
		{
			GenerarPublicacion generarPubli = new GenerarPublicacion();
			generarPubli.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(generarPubli);
			//generarPubli.Show();
			//this.Hide();
		}
		private void editarPublicacion_Click(object sender, EventArgs e)
		{
			EditarPublicacion editPublic = new EditarPublicacion();
			editPublic.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(editPublic);
			//editPublic.Show();
			//this.Hide();
		}
		private void abmCategoria_Click(object sender, EventArgs e)
		{
			//Comprar comp = new Comprar();
			//comp.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			//AbrirFormInPanel(comp);
			//comp.Show();
			//MessageBox.Show("You are selected Comprar ");
			//this.Hide();
		}
		private void abmGradoPublicacion_Click(object sender, EventArgs e)
		{
			//Comprar comp = new Comprar();
			//comp.Show();
			//comp.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			//AbrirFormInPanel(comp);
			//MessageBox.Show("You are selected Comprar ");
			//this.Hide();
		}
		private void comprar_Click(object sender, EventArgs e)
		{
			//Comprar comp = new Comprar();
			//comp.Show();
			//MessageBox.Show("You are selected Comprar ");
			//this.Hide();
		}
		private void historialCliente_Click(object sender, EventArgs e)
		{
			HistorialCliente histCli = new HistorialCliente();
			histCli.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(histCli);
			//histCli.Show();
			//this.Hide();
		}
		private void canjePuntos_Click(object sender, EventArgs e)
		{
			CanjePuntos canje = new CanjePuntos();
			canje.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(canje);
			//canje.Show();
			//this.Hide();
		}
		private void generarPago_Click(object sender, EventArgs e)
		{
			GenerarRendicionComisiones rendicion = new GenerarRendicionComisiones();
			rendicion.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(rendicion);
			//rendicion.Show();
			//this.Hide();
		}
		private void listadoEstadistico_Click(object sender, EventArgs e)
		{
			ListadoEstadistico listadoEst = new ListadoEstadistico();
			listadoEst.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			AbrirFormInPanel(listadoEst);
			//listadoEst.Show();
			//this.Hide();
		}
		private void cambiarPsw_Click(object sender, EventArgs e)
		{
			//UsuarioCambiarPsw cambiarPsw = new UsuarioCambiarPsw();
			//cambiarPsw.FormClosed += new FormClosedEventHandler(mostrarlogoAlCerrarForm);
			//AbrirFormInPanel(cambiarPsw);
			//listadoEst.Show();
			//this.Hide();
		}
		private void label1_Click(object sender, EventArgs e)
		{

		}

		private void menuRegistroUsuario_Click(object sender, EventArgs e)
		{

		}

		private void panel1_Paint(object sender, PaintEventArgs e)
		{

		}
	}
}
