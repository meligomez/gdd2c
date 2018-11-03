﻿namespace PalcoNet.VentanasPorRol
{
	partial class panelContenedor
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(panelContenedor));
			this.menuStrip1 = new System.Windows.Forms.MenuStrip();
			this.menuRegistroUsuario = new System.Windows.Forms.ToolStripMenuItem();
			this.altaDeUsuarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.cambiarContraseñaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuABMCliente = new System.Windows.Forms.ToolStripMenuItem();
			this.altaDeClienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.bajaDeClienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.modificacionDeClienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuABMEmpresa = new System.Windows.Forms.ToolStripMenuItem();
			this.altaDeEmpresaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.bajaDeEmpresaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.modificacionDeEmpresaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuPublicacion = new System.Windows.Forms.ToolStripMenuItem();
			this.generarPublicacionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.editarPublicacionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.aBMCategoriaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.aBMGradoDePublicacionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuComprar = new System.Windows.Forms.ToolStripMenuItem();
			this.realizarCompraToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuCliente = new System.Windows.Forms.ToolStripMenuItem();
			this.historialDelClienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.canjeDePuntosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuPagos = new System.Windows.Forms.ToolStripMenuItem();
			this.generarPagosDeComisionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.menuEstadisticas = new System.Windows.Forms.ToolStripMenuItem();
			this.listadoEstadisticoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.panel1 = new System.Windows.Forms.Panel();
			this.iconMinimizar = new System.Windows.Forms.PictureBox();
			this.iconCerrar = new System.Windows.Forms.PictureBox();
			this.menuStrip1.SuspendLayout();
			this.panel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.iconMinimizar)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.iconCerrar)).BeginInit();
			this.SuspendLayout();
			// 
			// menuStrip1
			// 
			this.menuStrip1.Font = new System.Drawing.Font("Raleway", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuStrip1.GripMargin = new System.Windows.Forms.Padding(2);
			this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuRegistroUsuario,
            this.menuABMCliente,
            this.menuABMEmpresa,
            this.menuPublicacion,
            this.menuComprar,
            this.menuCliente,
            this.menuPagos,
            this.menuEstadisticas});
			this.menuStrip1.Location = new System.Drawing.Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Padding = new System.Windows.Forms.Padding(6, 2, 0, 5);
			this.menuStrip1.Size = new System.Drawing.Size(1203, 31);
			this.menuStrip1.TabIndex = 0;
			this.menuStrip1.Text = "menuStrip";
			// 
			// menuRegistroUsuario
			// 
			this.menuRegistroUsuario.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.altaDeUsuarioToolStripMenuItem,
            this.cambiarContraseñaToolStripMenuItem});
			this.menuRegistroUsuario.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuRegistroUsuario.Name = "menuRegistroUsuario";
			this.menuRegistroUsuario.Size = new System.Drawing.Size(162, 24);
			this.menuRegistroUsuario.Text = "Registro de Usuarios";
			this.menuRegistroUsuario.Click += new System.EventHandler(this.menuRegistroUsuario_Click);
			// 
			// altaDeUsuarioToolStripMenuItem
			// 
			this.altaDeUsuarioToolStripMenuItem.Name = "altaDeUsuarioToolStripMenuItem";
			this.altaDeUsuarioToolStripMenuItem.Size = new System.Drawing.Size(222, 26);
			this.altaDeUsuarioToolStripMenuItem.Text = "Alta de Usuario";
			this.altaDeUsuarioToolStripMenuItem.Click += new System.EventHandler(this.altaUsuario_Click);
			// 
			// cambiarContraseñaToolStripMenuItem
			// 
			this.cambiarContraseñaToolStripMenuItem.Name = "cambiarContraseñaToolStripMenuItem";
			this.cambiarContraseñaToolStripMenuItem.Size = new System.Drawing.Size(222, 26);
			this.cambiarContraseñaToolStripMenuItem.Text = "Cambiar Contraseña";
			this.cambiarContraseñaToolStripMenuItem.Click += new System.EventHandler(this.cambiarPsw_Click);
			// 
			// menuABMCliente
			// 
			this.menuABMCliente.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.altaDeClienteToolStripMenuItem,
            this.bajaDeClienteToolStripMenuItem,
            this.modificacionDeClienteToolStripMenuItem});
			this.menuABMCliente.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuABMCliente.Name = "menuABMCliente";
			this.menuABMCliente.Size = new System.Drawing.Size(135, 24);
			this.menuABMCliente.Text = "ABM de Clientes";
			// 
			// altaDeClienteToolStripMenuItem
			// 
			this.altaDeClienteToolStripMenuItem.Name = "altaDeClienteToolStripMenuItem";
			this.altaDeClienteToolStripMenuItem.Size = new System.Drawing.Size(244, 26);
			this.altaDeClienteToolStripMenuItem.Text = "Alta de Cliente";
			this.altaDeClienteToolStripMenuItem.Click += new System.EventHandler(this.altaCliente_Click);
			// 
			// bajaDeClienteToolStripMenuItem
			// 
			this.bajaDeClienteToolStripMenuItem.Name = "bajaDeClienteToolStripMenuItem";
			this.bajaDeClienteToolStripMenuItem.Size = new System.Drawing.Size(244, 26);
			this.bajaDeClienteToolStripMenuItem.Text = "Baja de Cliente";
			this.bajaDeClienteToolStripMenuItem.Click += new System.EventHandler(this.bajaCliente_Click);
			// 
			// modificacionDeClienteToolStripMenuItem
			// 
			this.modificacionDeClienteToolStripMenuItem.Name = "modificacionDeClienteToolStripMenuItem";
			this.modificacionDeClienteToolStripMenuItem.Size = new System.Drawing.Size(244, 26);
			this.modificacionDeClienteToolStripMenuItem.Text = "Modificacion de Cliente";
			this.modificacionDeClienteToolStripMenuItem.Click += new System.EventHandler(this.modificacionCliente_Click);
			// 
			// menuABMEmpresa
			// 
			this.menuABMEmpresa.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.altaDeEmpresaToolStripMenuItem,
            this.bajaDeEmpresaToolStripMenuItem,
            this.modificacionDeEmpresaToolStripMenuItem});
			this.menuABMEmpresa.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuABMEmpresa.Name = "menuABMEmpresa";
			this.menuABMEmpresa.Size = new System.Drawing.Size(140, 24);
			this.menuABMEmpresa.Text = "ABM de Empresa";
			// 
			// altaDeEmpresaToolStripMenuItem
			// 
			this.altaDeEmpresaToolStripMenuItem.Name = "altaDeEmpresaToolStripMenuItem";
			this.altaDeEmpresaToolStripMenuItem.Size = new System.Drawing.Size(256, 26);
			this.altaDeEmpresaToolStripMenuItem.Text = "Alta deEmpresa";
			this.altaDeEmpresaToolStripMenuItem.Click += new System.EventHandler(this.altaEmpresa_Click);
			// 
			// bajaDeEmpresaToolStripMenuItem
			// 
			this.bajaDeEmpresaToolStripMenuItem.Name = "bajaDeEmpresaToolStripMenuItem";
			this.bajaDeEmpresaToolStripMenuItem.Size = new System.Drawing.Size(256, 26);
			this.bajaDeEmpresaToolStripMenuItem.Text = "Baja de Empresa";
			this.bajaDeEmpresaToolStripMenuItem.Click += new System.EventHandler(this.bajaEmpresa_Click);
			// 
			// modificacionDeEmpresaToolStripMenuItem
			// 
			this.modificacionDeEmpresaToolStripMenuItem.Name = "modificacionDeEmpresaToolStripMenuItem";
			this.modificacionDeEmpresaToolStripMenuItem.Size = new System.Drawing.Size(256, 26);
			this.modificacionDeEmpresaToolStripMenuItem.Text = "Modificacion de Empresa";
			this.modificacionDeEmpresaToolStripMenuItem.Click += new System.EventHandler(this.modificacionEmpresa_Click);
			// 
			// menuPublicacion
			// 
			this.menuPublicacion.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.generarPublicacionToolStripMenuItem,
            this.editarPublicacionToolStripMenuItem,
            this.aBMCategoriaToolStripMenuItem,
            this.aBMGradoDePublicacionToolStripMenuItem});
			this.menuPublicacion.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuPublicacion.Name = "menuPublicacion";
			this.menuPublicacion.Size = new System.Drawing.Size(99, 24);
			this.menuPublicacion.Text = "Publicacion";
			// 
			// generarPublicacionToolStripMenuItem
			// 
			this.generarPublicacionToolStripMenuItem.Name = "generarPublicacionToolStripMenuItem";
			this.generarPublicacionToolStripMenuItem.Size = new System.Drawing.Size(266, 26);
			this.generarPublicacionToolStripMenuItem.Text = "Generar Publicacion";
			this.generarPublicacionToolStripMenuItem.Click += new System.EventHandler(this.generarPublicacion_Click);
			// 
			// editarPublicacionToolStripMenuItem
			// 
			this.editarPublicacionToolStripMenuItem.Name = "editarPublicacionToolStripMenuItem";
			this.editarPublicacionToolStripMenuItem.Size = new System.Drawing.Size(266, 26);
			this.editarPublicacionToolStripMenuItem.Text = "Editar Publicacion";
			this.editarPublicacionToolStripMenuItem.Click += new System.EventHandler(this.editarPublicacion_Click);
			// 
			// aBMCategoriaToolStripMenuItem
			// 
			this.aBMCategoriaToolStripMenuItem.Name = "aBMCategoriaToolStripMenuItem";
			this.aBMCategoriaToolStripMenuItem.Size = new System.Drawing.Size(266, 26);
			this.aBMCategoriaToolStripMenuItem.Text = "ABM Categoria";
			this.aBMCategoriaToolStripMenuItem.Click += new System.EventHandler(this.abmCategoria_Click);
			// 
			// aBMGradoDePublicacionToolStripMenuItem
			// 
			this.aBMGradoDePublicacionToolStripMenuItem.Name = "aBMGradoDePublicacionToolStripMenuItem";
			this.aBMGradoDePublicacionToolStripMenuItem.Size = new System.Drawing.Size(266, 26);
			this.aBMGradoDePublicacionToolStripMenuItem.Text = "ABM Grado de Publicacion";
			this.aBMGradoDePublicacionToolStripMenuItem.Click += new System.EventHandler(this.abmGradoPublicacion_Click);
			// 
			// menuComprar
			// 
			this.menuComprar.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.realizarCompraToolStripMenuItem});
			this.menuComprar.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuComprar.Name = "menuComprar";
			this.menuComprar.Size = new System.Drawing.Size(80, 24);
			this.menuComprar.Text = "Comprar";
			this.menuComprar.Click += new System.EventHandler(this.comprar_Click);
			// 
			// realizarCompraToolStripMenuItem
			// 
			this.realizarCompraToolStripMenuItem.Name = "realizarCompraToolStripMenuItem";
			this.realizarCompraToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
			this.realizarCompraToolStripMenuItem.Text = "Realizar Compra";
			this.realizarCompraToolStripMenuItem.Click += new System.EventHandler(this.VentanaAdmin_Load);
			// 
			// menuCliente
			// 
			this.menuCliente.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.historialDelClienteToolStripMenuItem,
            this.canjeDePuntosToolStripMenuItem});
			this.menuCliente.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuCliente.Name = "menuCliente";
			this.menuCliente.Size = new System.Drawing.Size(69, 24);
			this.menuCliente.Text = "Cliente";
			// 
			// historialDelClienteToolStripMenuItem
			// 
			this.historialDelClienteToolStripMenuItem.Name = "historialDelClienteToolStripMenuItem";
			this.historialDelClienteToolStripMenuItem.Size = new System.Drawing.Size(216, 26);
			this.historialDelClienteToolStripMenuItem.Text = "Historial del Cliente";
			this.historialDelClienteToolStripMenuItem.Click += new System.EventHandler(this.historialCliente_Click);
			// 
			// canjeDePuntosToolStripMenuItem
			// 
			this.canjeDePuntosToolStripMenuItem.Name = "canjeDePuntosToolStripMenuItem";
			this.canjeDePuntosToolStripMenuItem.Size = new System.Drawing.Size(216, 26);
			this.canjeDePuntosToolStripMenuItem.Text = "Canje de Puntos";
			this.canjeDePuntosToolStripMenuItem.Click += new System.EventHandler(this.canjePuntos_Click);
			// 
			// menuPagos
			// 
			this.menuPagos.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.generarPagosDeComisionesToolStripMenuItem});
			this.menuPagos.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuPagos.Name = "menuPagos";
			this.menuPagos.Size = new System.Drawing.Size(62, 24);
			this.menuPagos.Text = "Pagos";
			// 
			// generarPagosDeComisionesToolStripMenuItem
			// 
			this.generarPagosDeComisionesToolStripMenuItem.Name = "generarPagosDeComisionesToolStripMenuItem";
			this.generarPagosDeComisionesToolStripMenuItem.Size = new System.Drawing.Size(290, 26);
			this.generarPagosDeComisionesToolStripMenuItem.Text = "Generar Pagos de Comisiones";
			this.generarPagosDeComisionesToolStripMenuItem.Click += new System.EventHandler(this.generarPago_Click);
			// 
			// menuEstadisticas
			// 
			this.menuEstadisticas.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.listadoEstadisticoToolStripMenuItem});
			this.menuEstadisticas.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.menuEstadisticas.Name = "menuEstadisticas";
			this.menuEstadisticas.Size = new System.Drawing.Size(99, 24);
			this.menuEstadisticas.Text = "Estadisticas";
			// 
			// listadoEstadisticoToolStripMenuItem
			// 
			this.listadoEstadisticoToolStripMenuItem.Name = "listadoEstadisticoToolStripMenuItem";
			this.listadoEstadisticoToolStripMenuItem.Size = new System.Drawing.Size(209, 26);
			this.listadoEstadisticoToolStripMenuItem.Text = "Listado Estadistico";
			this.listadoEstadisticoToolStripMenuItem.Click += new System.EventHandler(this.listadoEstadistico_Click);
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label3.Location = new System.Drawing.Point(885, 732);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(306, 18);
			this.label3.TabIndex = 3;
			this.label3.Text = "Gestion de Datos 2C 2018- Dropeadores © ";
			this.label3.Click += new System.EventHandler(this.label3_Click);
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(309, 83);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(294, 22);
			this.label2.TabIndex = 2;
			this.label2.Text = "Seleccione una opción del menú";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Raleway", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.Location = new System.Drawing.Point(389, 12);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(308, 33);
			this.label1.TabIndex = 1;
			this.label1.Text = "¡Bienvenido al sistema!";
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.iconMinimizar);
			this.panel1.Controls.Add(this.iconCerrar);
			this.panel1.Controls.Add(this.label1);
			this.panel1.Controls.Add(this.label3);
			this.panel1.Location = new System.Drawing.Point(0, 28);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(1203, 757);
			this.panel1.TabIndex = 6;
			this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
			// 
			// iconMinimizar
			// 
			this.iconMinimizar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.iconMinimizar.Cursor = System.Windows.Forms.Cursors.Hand;
			this.iconMinimizar.Image = ((System.Drawing.Image)(resources.GetObject("iconMinimizar.Image")));
			this.iconMinimizar.Location = new System.Drawing.Point(1083, 4);
			this.iconMinimizar.Margin = new System.Windows.Forms.Padding(4);
			this.iconMinimizar.Name = "iconMinimizar";
			this.iconMinimizar.Size = new System.Drawing.Size(56, 34);
			this.iconMinimizar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.iconMinimizar.TabIndex = 7;
			this.iconMinimizar.TabStop = false;
			this.iconMinimizar.Click += new System.EventHandler(this.iconMinimizar_Click);
			// 
			// iconCerrar
			// 
			this.iconCerrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.iconCerrar.Cursor = System.Windows.Forms.Cursors.Hand;
			this.iconCerrar.Image = ((System.Drawing.Image)(resources.GetObject("iconCerrar.Image")));
			this.iconCerrar.Location = new System.Drawing.Point(1147, 4);
			this.iconCerrar.Margin = new System.Windows.Forms.Padding(4);
			this.iconCerrar.Name = "iconCerrar";
			this.iconCerrar.Size = new System.Drawing.Size(56, 34);
			this.iconCerrar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.iconCerrar.TabIndex = 5;
			this.iconCerrar.TabStop = false;
			this.iconCerrar.Click += new System.EventHandler(this.iconCerrar_Click);
			// 
			// panelContenedor
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 21F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.Silver;
			this.ClientSize = new System.Drawing.Size(1203, 787);
			this.Controls.Add(this.panel1);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.menuStrip1);
			this.Font = new System.Drawing.Font("Raleway", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
			this.IsMdiContainer = true;
			this.MainMenuStrip = this.menuStrip1;
			this.Margin = new System.Windows.Forms.Padding(4);
			this.Name = "panelContenedor";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "VentanaAdmin";
			this.Load += new System.EventHandler(this.VentanaAdmin_Load);
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.iconMinimizar)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.iconCerrar)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.MenuStrip menuStrip1;
		private System.Windows.Forms.ToolStripMenuItem menuRegistroUsuario;
		private System.Windows.Forms.ToolStripMenuItem altaDeUsuarioToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuABMCliente;
		private System.Windows.Forms.ToolStripMenuItem altaDeClienteToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem bajaDeClienteToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem modificacionDeClienteToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuABMEmpresa;
		private System.Windows.Forms.ToolStripMenuItem altaDeEmpresaToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem bajaDeEmpresaToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem modificacionDeEmpresaToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuPublicacion;
		private System.Windows.Forms.ToolStripMenuItem generarPublicacionToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem editarPublicacionToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem aBMCategoriaToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem aBMGradoDePublicacionToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuComprar;
		private System.Windows.Forms.ToolStripMenuItem realizarCompraToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuCliente;
		private System.Windows.Forms.ToolStripMenuItem historialDelClienteToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem canjeDePuntosToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuPagos;
		private System.Windows.Forms.ToolStripMenuItem generarPagosDeComisionesToolStripMenuItem;
		private System.Windows.Forms.ToolStripMenuItem menuEstadisticas;
		private System.Windows.Forms.ToolStripMenuItem listadoEstadisticoToolStripMenuItem;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.PictureBox iconMinimizar;
		private System.Windows.Forms.PictureBox iconmaximizar;
		private System.Windows.Forms.PictureBox iconCerrar;
		private System.Windows.Forms.ToolStripMenuItem cambiarContraseñaToolStripMenuItem;
	}
}