﻿namespace PalcoNet.Abm_Grado
{
    partial class ModificarGrado
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
            this.btnModificar = new System.Windows.Forms.Button();
            this.txtTipo = new System.Windows.Forms.TextBox();
            this.btCancelar = new System.Windows.Forms.Button();
            this.botonBuscar = new System.Windows.Forms.Button();
            this.dataGridGrado = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridGrado)).BeginInit();
            this.SuspendLayout();
            // 
            // btnModificar
            // 
            this.btnModificar.Location = new System.Drawing.Point(511, 402);
            this.btnModificar.Margin = new System.Windows.Forms.Padding(4);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(136, 43);
            this.btnModificar.TabIndex = 101;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.UseVisualStyleBackColor = true;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // txtTipo
            // 
            this.txtTipo.Location = new System.Drawing.Point(284, 105);
            this.txtTipo.Margin = new System.Windows.Forms.Padding(4);
            this.txtTipo.Name = "txtTipo";
            this.txtTipo.Size = new System.Drawing.Size(106, 24);
            this.txtTipo.TabIndex = 100;
            // 
            // btCancelar
            // 
            this.btCancelar.Location = new System.Drawing.Point(22, 402);
            this.btCancelar.Margin = new System.Windows.Forms.Padding(4);
            this.btCancelar.Name = "btCancelar";
            this.btCancelar.Size = new System.Drawing.Size(136, 46);
            this.btCancelar.TabIndex = 99;
            this.btCancelar.Text = "Cancelar";
            this.btCancelar.UseVisualStyleBackColor = true;
            this.btCancelar.Click += new System.EventHandler(this.btCancelar_Click);
            // 
            // botonBuscar
            // 
            this.botonBuscar.Location = new System.Drawing.Point(511, 100);
            this.botonBuscar.Name = "botonBuscar";
            this.botonBuscar.Size = new System.Drawing.Size(120, 29);
            this.botonBuscar.TabIndex = 98;
            this.botonBuscar.Text = "Buscar";
            this.botonBuscar.UseVisualStyleBackColor = true;
            this.botonBuscar.Click += new System.EventHandler(this.botonBuscar_Click);
            // 
            // dataGridGrado
            // 
            this.dataGridGrado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridGrado.Location = new System.Drawing.Point(5, 156);
            this.dataGridGrado.Margin = new System.Windows.Forms.Padding(4);
            this.dataGridGrado.Name = "dataGridGrado";
            this.dataGridGrado.Size = new System.Drawing.Size(709, 233);
            this.dataGridGrado.TabIndex = 97;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label3.Location = new System.Drawing.Point(214, 109);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(43, 20);
            this.label3.TabIndex = 96;
            this.label3.Text = "Tipo:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(232, 49);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(204, 29);
            this.label7.TabIndex = 102;
            this.label7.Text = "Modificar GRADO";
            // 
            // ModificarGrado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(735, 685);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.txtTipo);
            this.Controls.Add(this.btCancelar);
            this.Controls.Add(this.botonBuscar);
            this.Controls.Add(this.dataGridGrado);
            this.Controls.Add(this.label3);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "ModificarGrado";
            this.Text = "ModificarGrado";
            this.Load += new System.EventHandler(this.ModificarGrado_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridGrado)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.TextBox txtTipo;
        private System.Windows.Forms.Button btCancelar;
        private System.Windows.Forms.Button botonBuscar;
        private System.Windows.Forms.DataGridView dataGridGrado;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label7;
    }
}