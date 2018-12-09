namespace PalcoNet.Comprar
{
    partial class SeleccionUbicaciones
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
            this.label7 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.labelUbicaciones = new System.Windows.Forms.Label();
            this.dataGridViewUbicaciones = new System.Windows.Forms.DataGridView();
            this.btnUbicaciones = new System.Windows.Forms.Button();
            this.Ubicaciones = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewUbicaciones)).BeginInit();
            this.SuspendLayout();
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(81, 65);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(386, 29);
            this.label7.TabIndex = 90;
            this.label7.Text = "SELECCIONÉ LAS UBICACIONES";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(176, 124);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(96, 20);
            this.label1.TabIndex = 92;
            this.label1.Text = "Ubicaciones";
            // 
            // labelUbicaciones
            // 
            this.labelUbicaciones.AutoSize = true;
            this.labelUbicaciones.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.labelUbicaciones.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.labelUbicaciones.Location = new System.Drawing.Point(321, 122);
            this.labelUbicaciones.MaximumSize = new System.Drawing.Size(350, 60);
            this.labelUbicaciones.MinimumSize = new System.Drawing.Size(350, 20);
            this.labelUbicaciones.Name = "labelUbicaciones";
            this.labelUbicaciones.Size = new System.Drawing.Size(350, 22);
            this.labelUbicaciones.TabIndex = 93;
            // 
            // dataGridViewUbicaciones
            // 
            this.dataGridViewUbicaciones.AllowUserToAddRows = false;
            this.dataGridViewUbicaciones.AllowUserToDeleteRows = false;
            this.dataGridViewUbicaciones.AllowUserToResizeColumns = false;
            this.dataGridViewUbicaciones.AllowUserToResizeRows = false;
            this.dataGridViewUbicaciones.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewUbicaciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewUbicaciones.Location = new System.Drawing.Point(36, 164);
            this.dataGridViewUbicaciones.Name = "dataGridViewUbicaciones";
            this.dataGridViewUbicaciones.Size = new System.Drawing.Size(960, 264);
            this.dataGridViewUbicaciones.TabIndex = 94;
            // 
            // btnUbicaciones
            // 
            this.btnUbicaciones.Location = new System.Drawing.Point(211, 464);
            this.btnUbicaciones.Name = "btnUbicaciones";
            this.btnUbicaciones.Size = new System.Drawing.Size(133, 79);
            this.btnUbicaciones.TabIndex = 95;
            this.btnUbicaciones.Text = "Agregar Ubicaciones Elegidas";
            this.btnUbicaciones.UseVisualStyleBackColor = true;
            this.btnUbicaciones.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // Ubicaciones
            // 
            this.Ubicaciones.Location = new System.Drawing.Point(636, 464);
            this.Ubicaciones.Name = "Ubicaciones";
            this.Ubicaciones.Size = new System.Drawing.Size(136, 79);
            this.Ubicaciones.TabIndex = 96;
            this.Ubicaciones.Text = "Agregar Ubicaciones";
            this.Ubicaciones.UseVisualStyleBackColor = true;
            this.Ubicaciones.Click += new System.EventHandler(this.button1_Click);
            // 
            // SeleccionUbicaciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(1275, 555);
            this.Controls.Add(this.Ubicaciones);
            this.Controls.Add(this.btnUbicaciones);
            this.Controls.Add(this.dataGridViewUbicaciones);
            this.Controls.Add(this.labelUbicaciones);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label7);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "SeleccionUbicaciones";
            this.Text = "Seleccion Ubicaciones";
            this.Load += new System.EventHandler(this.SeleccionUbicaciones_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewUbicaciones)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.Label labelUbicaciones;
        public System.Windows.Forms.DataGridView dataGridViewUbicaciones;
        private System.Windows.Forms.Button btnUbicaciones;
        private System.Windows.Forms.Button Ubicaciones;
    }
}