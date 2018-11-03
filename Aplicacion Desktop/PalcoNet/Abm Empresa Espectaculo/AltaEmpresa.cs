using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Modelo.Comun;
using Modelo.Dominio;


namespace PalcoNet.Abm_Empresa_Espectaculo
{
	public partial class AltaEmpresa : Form
	{

        string rolLogueado;
		public AltaEmpresa(string rol)
		{
			InitializeComponent();
            ConfigGlobal cg = new ConfigGlobal();
            DateTime fechaSistema = cg.getFechaSistema();
            lblFechaSistema.Visible = true;
            lblFechaSistema.Text = fechaSistema.ToString();
            rolLogueado = rol;
            if (rolLogueado != "sin Rol")
            {
                textUsername.ReadOnly = true;
                textUsername.Visible = false;
                textUsername.BackColor = System.Drawing.SystemColors.Window;
                textPassword.ReadOnly = true;
                textPassword.Visible = false;
                textPassword.BackColor = System.Drawing.SystemColors.Window;
                labelUser.Text = "Usuario y Password creadas por defecto.";
            }
            else
            {
                lblUsername.Visible = false;
                lblPassword.Visible = false;

            }
		}

        private void labelUserEscribir(object sender, EventArgs e)
        {
            if (rolLogueado != "sin Rol")
            {
                lblUsername.Text = textCUIT.Text;
                lblUsername.Visible = true;
                lblPassword.Text = textCUIT.Text;
                lblPassword.Visible = true;
            }
            else
            {
                lblUsername.Visible = false;
                lblPassword.Visible = false;
            }
        }


        private void btnGuardar_Click(object sender, EventArgs e)
        {
              try
            {
                if (todosCamposCompletos())
                {
                    Usuario usuario = new Usuario();
                    if (rolLogueado != "sin Rol")
                    {
                        usuario.username = textCUIT.Text;
                        usuario.password = textCUIT.Text;
                        usuario.creadoPor = "admin";
                    }
                    else
                    {
                        usuario.username = textUsername.Text;
                        usuario.password = textPassword.Text;
                        usuario.creadoPor = "empresa";
                    }
				
                    
                    
                    Empresa empresa = new Empresa();
                    Domicilio dom = new Domicilio();
                    
                    empresa.Empresa_Cuit = textCUIT.Text;
                    //empresa.Empresa_Cuit = int.Parse(textCUIT.Text);
                    empresa.Empresa_mail = textMail.Text;
                    empresa.Empresa_telefono = int.Parse(textTelefono.Text);
                    empresa.Empresa_razon_social = textRazonSocial.Text;
                    usuario.username = textUsername.Text;
                    usuario.password = textPassword.Text;
					dom.calle = textDireccion.Text;
					dom.piso = int.Parse(textPiso.Text);
					dom.dpto = textDepto.Text;
					dom.localidad = textLocalidad.Text;
					dom.cp = int.Parse(textCP.Text);
                    dom.ciudad = textCiudad.Text;
                    empresa.Empresa_Dom = dom;
					usuario.empresa = empresa;
					int resp = usuario.AltaEmpresa();
                    if (resp != 0)
                    {
                        MessageBox.Show("Error al conectarse con la DB. No se ha creado el Usuario.", "Error al crear Nuevo Usuario",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                }

                MessageBox.Show("Empresa: " + textCUIT.Text + " creada satisfactoriamente.", "Alta de Usuario",
                MessageBoxButtons.OK);
               
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

    private void btnVolver_Click(object sender, EventArgs e)
    {
        this.Hide();

    }

    private void AltaEmpresa_Load(object sender, EventArgs e)
    {

    }

        }
    

        }
