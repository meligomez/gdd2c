namespace PalcoNet.Comprar
{
    partial class SeleccionCategorias
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
            this.labelCategorias = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridViewCategoria = new System.Windows.Forms.DataGridView();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCategoria)).BeginInit();
            this.SuspendLayout();
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(62, 29);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(378, 29);
            this.label7.TabIndex = 89;
            this.label7.Text = "SELECCIONÉ LAS CATEGORÍAS";
            // 
            // labelCategorias
            // 
            this.labelCategorias.AutoSize = true;
            this.labelCategorias.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.labelCategorias.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.labelCategorias.Location = new System.Drawing.Point(394, 117);
            this.labelCategorias.MaximumSize = new System.Drawing.Size(350, 60);
            this.labelCategorias.MinimumSize = new System.Drawing.Size(350, 20);
            this.labelCategorias.Name = "labelCategorias";
            this.labelCategorias.Size = new System.Drawing.Size(350, 22);
            this.labelCategorias.TabIndex = 90;
            this.labelCategorias.Click += new System.EventHandler(this.labelCategorias_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(189, 117);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 20);
            this.label1.TabIndex = 91;
            this.label1.Text = "Categorias";
            // 
            // dataGridViewCategoria
            // 
            this.dataGridViewCategoria.AllowUserToAddRows = false;
            this.dataGridViewCategoria.AllowUserToDeleteRows = false;
            this.dataGridViewCategoria.AllowUserToResizeColumns = false;
            this.dataGridViewCategoria.AllowUserToResizeRows = false;
            this.dataGridViewCategoria.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewCategoria.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewCategoria.Location = new System.Drawing.Point(93, 161);
            this.dataGridViewCategoria.Name = "dataGridViewCategoria";
            this.dataGridViewCategoria.Size = new System.Drawing.Size(887, 264);
            this.dataGridViewCategoria.TabIndex = 92;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(243, 448);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(133, 79);
            this.btnBuscar.TabIndex = 93;
            this.btnBuscar.Text = "Agregar Categorias Elegidas";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(589, 448);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(136, 79);
            this.button1.TabIndex = 94;
            this.button1.Text = "Agregar Categoria";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // SeleccionCategorias
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(1196, 648);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnBuscar);
            this.Controls.Add(this.dataGridViewCategoria);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.labelCategorias);
            this.Controls.Add(this.label7);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "SeleccionCategorias";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.SeleccionCategorias_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewCategoria)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label7;
        public System.Windows.Forms.Label labelCategorias;
        private System.Windows.Forms.Label label1;
        public System.Windows.Forms.DataGridView dataGridViewCategoria;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Button button1;
    }
}