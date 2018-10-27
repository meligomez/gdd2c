namespace PalcoNet.Abm_Grado
{
    partial class Form1
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
			this.label1 = new System.Windows.Forms.Label();
			this.comboPublicacion = new System.Windows.Forms.ComboBox();
			this.comboGrado = new System.Windows.Forms.ComboBox();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.btnVolver = new System.Windows.Forms.Button();
			this.btnGuardar = new System.Windows.Forms.Button();
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Raleway", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.Location = new System.Drawing.Point(122, 21);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(175, 35);
			this.label1.TabIndex = 0;
			this.label1.Text = "ABM Grado";
			// 
			// comboPublicacion
			// 
			this.comboPublicacion.FormattingEnabled = true;
			this.comboPublicacion.Location = new System.Drawing.Point(147, 97);
			this.comboPublicacion.Name = "comboPublicacion";
			this.comboPublicacion.Size = new System.Drawing.Size(222, 23);
			this.comboPublicacion.TabIndex = 1;
			// 
			// comboGrado
			// 
			this.comboGrado.FormattingEnabled = true;
			this.comboGrado.Location = new System.Drawing.Point(147, 164);
			this.comboGrado.Name = "comboGrado";
			this.comboGrado.Size = new System.Drawing.Size(222, 23);
			this.comboGrado.TabIndex = 2;
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Raleway", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label2.Location = new System.Drawing.Point(39, 97);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(102, 20);
			this.label2.TabIndex = 3;
			this.label2.Text = "Publicacion:";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Raleway", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label3.Location = new System.Drawing.Point(39, 167);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(60, 20);
			this.label3.TabIndex = 4;
			this.label3.Text = "Grado:";
			// 
			// btnVolver
			// 
			this.btnVolver.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btnVolver.Location = new System.Drawing.Point(43, 232);
			this.btnVolver.Name = "btnVolver";
			this.btnVolver.Size = new System.Drawing.Size(109, 31);
			this.btnVolver.TabIndex = 5;
			this.btnVolver.Text = "Volver";
			this.btnVolver.UseVisualStyleBackColor = true;
			// 
			// btnGuardar
			// 
			this.btnGuardar.Font = new System.Drawing.Font("Raleway", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btnGuardar.Location = new System.Drawing.Point(295, 232);
			this.btnGuardar.Name = "btnGuardar";
			this.btnGuardar.Size = new System.Drawing.Size(109, 31);
			this.btnGuardar.TabIndex = 6;
			this.btnGuardar.Text = "Guardar";
			this.btnGuardar.UseVisualStyleBackColor = true;
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.Silver;
			this.ClientSize = new System.Drawing.Size(435, 287);
			this.Controls.Add(this.btnGuardar);
			this.Controls.Add(this.btnVolver);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.comboGrado);
			this.Controls.Add(this.comboPublicacion);
			this.Controls.Add(this.label1);
			this.Font = new System.Drawing.Font("Raleway", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
			this.Name = "Form1";
			this.Text = "Form1";
			this.ResumeLayout(false);
			this.PerformLayout();

        }

		#endregion

		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.ComboBox comboPublicacion;
		private System.Windows.Forms.ComboBox comboGrado;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Button btnVolver;
		private System.Windows.Forms.Button btnGuardar;
	}
}