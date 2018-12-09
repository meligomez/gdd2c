﻿namespace PalcoNet.Comprar
{
    partial class ComprarPPAL
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ComprarPPAL));
            this.buttonPAGAR = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.lblPuntos = new System.Windows.Forms.Label();
            this.lblImporte = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.btnNuevoMedioPago = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridViewCompras = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.labelCategorias = new System.Windows.Forms.Label();
            this.buttonCategoria = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.dateTimePickerHasta = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerDesde = new System.Windows.Forms.DateTimePicker();
            this.textDescripcion = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.label7 = new System.Windows.Forms.Label();
            this.labelMedioPago = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCompras)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            this.SuspendLayout();
            // 
            // buttonPAGAR
            // 
            this.buttonPAGAR.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.buttonPAGAR.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonPAGAR.ForeColor = System.Drawing.Color.FloralWhite;
            this.buttonPAGAR.Location = new System.Drawing.Point(947, 643);
            this.buttonPAGAR.Name = "buttonPAGAR";
            this.buttonPAGAR.Size = new System.Drawing.Size(139, 47);
            this.buttonPAGAR.TabIndex = 110;
            this.buttonPAGAR.Text = "Pagar";
            this.buttonPAGAR.UseVisualStyleBackColor = false;
            this.buttonPAGAR.Click += new System.EventHandler(this.buttonPAGAR_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(76, 643);
            this.btnCancelar.Margin = new System.Windows.Forms.Padding(4);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(136, 43);
            this.btnCancelar.TabIndex = 101;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // lblPuntos
            // 
            this.lblPuntos.AutoSize = true;
            this.lblPuntos.Location = new System.Drawing.Point(726, 591);
            this.lblPuntos.Name = "lblPuntos";
            this.lblPuntos.Size = new System.Drawing.Size(193, 20);
            this.lblPuntos.TabIndex = 109;
            this.lblPuntos.Text = "suma de puntos(readonly)";
            // 
            // lblImporte
            // 
            this.lblImporte.AutoSize = true;
            this.lblImporte.Location = new System.Drawing.Point(726, 527);
            this.lblImporte.Name = "lblImporte";
            this.lblImporte.Size = new System.Drawing.Size(205, 20);
            this.lblImporte.TabIndex = 108;
            this.lblImporte.Text = "suma de importes(readonly)";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(506, 591);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(165, 20);
            this.label6.TabIndex = 107;
            this.label6.Text = "Puntos para el cliente:";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(1029, 295);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(131, 55);
            this.btnBuscar.TabIndex = 100;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(568, 534);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(103, 20);
            this.label5.TabIndex = 106;
            this.label5.Text = "Importe total:";
            // 
            // btnNuevoMedioPago
            // 
            this.btnNuevoMedioPago.Location = new System.Drawing.Point(150, 580);
            this.btnNuevoMedioPago.Name = "btnNuevoMedioPago";
            this.btnNuevoMedioPago.Size = new System.Drawing.Size(290, 42);
            this.btnNuevoMedioPago.TabIndex = 105;
            this.btnNuevoMedioPago.Text = "Asociar Medio de Pago";
            this.btnNuevoMedioPago.UseVisualStyleBackColor = true;
            this.btnNuevoMedioPago.Click += new System.EventHandler(this.btnNuevoMedioPago_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(66, 534);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(219, 20);
            this.label2.TabIndex = 103;
            this.label2.Text = "Seleccione un medio de Pago";
            // 
            // dataGridViewCompras
            // 
            this.dataGridViewCompras.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewCompras.Location = new System.Drawing.Point(70, 278);
            this.dataGridViewCompras.Name = "dataGridViewCompras";
            this.dataGridViewCompras.RowTemplate.Height = 24;
            this.dataGridViewCompras.Size = new System.Drawing.Size(953, 236);
            this.dataGridViewCompras.TabIndex = 102;
            this.dataGridViewCompras.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewCompras_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.labelCategorias);
            this.groupBox1.Controls.Add(this.buttonCategoria);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.dateTimePickerHasta);
            this.groupBox1.Controls.Add(this.dateTimePickerDesde);
            this.groupBox1.Controls.Add(this.textDescripcion);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(42, 89);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1090, 164);
            this.groupBox1.TabIndex = 113;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos de la Publicacion";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // labelCategorias
            // 
            this.labelCategorias.AutoSize = true;
            this.labelCategorias.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.labelCategorias.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.labelCategorias.Location = new System.Drawing.Point(504, 36);
            this.labelCategorias.MaximumSize = new System.Drawing.Size(885, 23);
            this.labelCategorias.MinimumSize = new System.Drawing.Size(336, 23);
            this.labelCategorias.Name = "labelCategorias";
            this.labelCategorias.Size = new System.Drawing.Size(336, 23);
            this.labelCategorias.TabIndex = 99;
            this.labelCategorias.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.labelCategorias.Click += new System.EventHandler(this.labelCategorias_Click);
            // 
            // buttonCategoria
            // 
            this.buttonCategoria.Location = new System.Drawing.Point(155, 31);
            this.buttonCategoria.Name = "buttonCategoria";
            this.buttonCategoria.Size = new System.Drawing.Size(338, 36);
            this.buttonCategoria.TabIndex = 99;
            this.buttonCategoria.Text = "Elegir categorias";
            this.buttonCategoria.UseVisualStyleBackColor = true;
            this.buttonCategoria.Click += new System.EventHandler(this.buttonCategoria_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(901, 83);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 20);
            this.label8.TabIndex = 95;
            this.label8.Text = "Hasta";
            // 
            // dateTimePickerHasta
            // 
            this.dateTimePickerHasta.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerHasta.Location = new System.Drawing.Point(901, 107);
            this.dateTimePickerHasta.Margin = new System.Windows.Forms.Padding(4);
            this.dateTimePickerHasta.Name = "dateTimePickerHasta";
            this.dateTimePickerHasta.Size = new System.Drawing.Size(189, 26);
            this.dateTimePickerHasta.TabIndex = 94;
            // 
            // dateTimePickerDesde
            // 
            this.dateTimePickerDesde.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerDesde.Location = new System.Drawing.Point(901, 50);
            this.dateTimePickerDesde.Margin = new System.Windows.Forms.Padding(4);
            this.dateTimePickerDesde.Name = "dateTimePickerDesde";
            this.dateTimePickerDesde.Size = new System.Drawing.Size(189, 26);
            this.dateTimePickerDesde.TabIndex = 93;
            // 
            // textDescripcion
            // 
            this.textDescripcion.Location = new System.Drawing.Point(155, 104);
            this.textDescripcion.Name = "textDescripcion";
            this.textDescripcion.Size = new System.Drawing.Size(448, 26);
            this.textDescripcion.TabIndex = 5;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(897, 22);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 20);
            this.label4.TabIndex = 3;
            this.label4.Text = "Desde";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(30, 107);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 20);
            this.label3.TabIndex = 2;
            this.label3.Text = "Descripcion";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(30, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(78, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Categoria";
            // 
            // pictureBox3
            // 
            this.pictureBox3.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureBox3.BackgroundImage")));
            this.pictureBox3.Location = new System.Drawing.Point(60, 17);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(65, 66);
            this.pictureBox3.TabIndex = 112;
            this.pictureBox3.TabStop = false;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(129, 33);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(134, 29);
            this.label7.TabIndex = 111;
            this.label7.Text = "COMPRAR";
            // 
            // labelMedioPago
            // 
            this.labelMedioPago.AutoSize = true;
            this.labelMedioPago.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.labelMedioPago.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.labelMedioPago.Location = new System.Drawing.Point(309, 531);
            this.labelMedioPago.MaximumSize = new System.Drawing.Size(200, 23);
            this.labelMedioPago.MinimumSize = new System.Drawing.Size(200, 23);
            this.labelMedioPago.Name = "labelMedioPago";
            this.labelMedioPago.Size = new System.Drawing.Size(200, 23);
            this.labelMedioPago.TabIndex = 100;
            this.labelMedioPago.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // ComprarPPAL
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(1370, 710);
            this.Controls.Add(this.labelMedioPago);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.buttonPAGAR);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.lblPuntos);
            this.Controls.Add(this.lblImporte);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnNuevoMedioPago);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridViewCompras);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "ComprarPPAL";
            this.Text = "Realizar Compra";
            this.Load += new System.EventHandler(this.ComprarPPAL_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCompras)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.Button buttonPAGAR;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label lblPuntos;
        private System.Windows.Forms.Label lblImporte;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnNuevoMedioPago;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridViewCompras;
        private System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.Label labelCategorias;
        private System.Windows.Forms.Button buttonCategoria;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DateTimePicker dateTimePickerHasta;
        private System.Windows.Forms.DateTimePicker dateTimePickerDesde;
        private System.Windows.Forms.TextBox textDescripcion;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Label label7;
        public System.Windows.Forms.Label labelMedioPago;
    }
}