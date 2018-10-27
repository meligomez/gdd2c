namespace PalcoNet.Canje_Puntos
{
    partial class CanjePuntos
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CanjePuntos));
			this.pictureBox1 = new System.Windows.Forms.PictureBox();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.btnCanjear = new System.Windows.Forms.Button();
			this.lblPuntos = new System.Windows.Forms.Label();
			this.comboBox1 = new System.Windows.Forms.ComboBox();
			this.btnVolver = new System.Windows.Forms.Button();
			this.label4 = new System.Windows.Forms.Label();
			this.lblCliente = new System.Windows.Forms.Label();
			((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
			this.SuspendLayout();
			// 
			// pictureBox1
			// 
			this.pictureBox1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.BackgroundImage")));
			this.pictureBox1.Location = new System.Drawing.Point(57, 33);
			this.pictureBox1.Name = "pictureBox1";
			this.pictureBox1.Size = new System.Drawing.Size(69, 69);
			this.pictureBox1.TabIndex = 0;
			this.pictureBox1.TabStop = false;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Raleway", 19.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.Location = new System.Drawing.Point(132, 45);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(320, 39);
			this.label1.TabIndex = 1;
			this.label1.Text = "CANJE DE PUNTOS";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(53, 171);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(79, 24);
			this.label2.TabIndex = 2;
			this.label2.Text = "Puntos:";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(53, 217);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(216, 24);
			this.label3.TabIndex = 3;
			this.label3.Text = "Seleccione un Premio:";
			// 
			// btnCanjear
			// 
			this.btnCanjear.Location = new System.Drawing.Point(287, 283);
			this.btnCanjear.Name = "btnCanjear";
			this.btnCanjear.Size = new System.Drawing.Size(165, 46);
			this.btnCanjear.TabIndex = 4;
			this.btnCanjear.Text = "Canjear";
			this.btnCanjear.UseVisualStyleBackColor = true;
			// 
			// lblPuntos
			// 
			this.lblPuntos.AutoSize = true;
			this.lblPuntos.Location = new System.Drawing.Point(135, 171);
			this.lblPuntos.Name = "lblPuntos";
			this.lblPuntos.Size = new System.Drawing.Size(0, 24);
			this.lblPuntos.TabIndex = 5;
			// 
			// comboBox1
			// 
			this.comboBox1.FormattingEnabled = true;
			this.comboBox1.Location = new System.Drawing.Point(275, 214);
			this.comboBox1.Name = "comboBox1";
			this.comboBox1.Size = new System.Drawing.Size(162, 32);
			this.comboBox1.TabIndex = 6;
			// 
			// btnVolver
			// 
			this.btnVolver.Location = new System.Drawing.Point(41, 283);
			this.btnVolver.Name = "btnVolver";
			this.btnVolver.Size = new System.Drawing.Size(112, 46);
			this.btnVolver.TabIndex = 7;
			this.btnVolver.Text = "Volver";
			this.btnVolver.UseVisualStyleBackColor = true;
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(53, 133);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(80, 24);
			this.label4.TabIndex = 8;
			this.label4.Text = "Cliente:";
			// 
			// lblCliente
			// 
			this.lblCliente.AutoSize = true;
			this.lblCliente.Location = new System.Drawing.Point(135, 133);
			this.lblCliente.Name = "lblCliente";
			this.lblCliente.Size = new System.Drawing.Size(0, 24);
			this.lblCliente.TabIndex = 9;
			// 
			// CanjePuntos
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 24F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.Silver;
			this.ClientSize = new System.Drawing.Size(500, 368);
			this.Controls.Add(this.lblCliente);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.btnVolver);
			this.Controls.Add(this.comboBox1);
			this.Controls.Add(this.lblPuntos);
			this.Controls.Add(this.btnCanjear);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.pictureBox1);
			this.Font = new System.Drawing.Font("Raleway", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
			this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
			this.Name = "CanjePuntos";
			this.Text = "Form1";
			((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

        }

		#endregion

		private System.Windows.Forms.PictureBox pictureBox1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Button btnCanjear;
		private System.Windows.Forms.Label lblPuntos;
		private System.Windows.Forms.ComboBox comboBox1;
		private System.Windows.Forms.Button btnVolver;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label lblCliente;
	}
}