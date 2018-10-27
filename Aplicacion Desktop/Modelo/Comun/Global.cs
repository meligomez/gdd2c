using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Modelo.Comun
{
	public class Global
	{
		#region Singletons Ventanas
		private static Form ventanaAnterior;
		private static List<Form> listaVentanas = new List<Form>();
		public static Form VentanaAnterior
		{
			get { return ventanaAnterior; }
			set { ventanaAnterior = value; }
		}

		public static void deshabilitarAnterior(Form vent)
		{
			vent.Visible = false;
			ventanaAnterior = vent;
			listaVentanas.Add(vent);
		}

		public static void habilitarAnterior()
		{
			int pos = listaVentanas.Count;
			if (pos > 0)
			{
				ventanaAnterior = listaVentanas[pos - 1];
				listaVentanas.RemoveAt(pos - 1);
				ventanaAnterior.Visible = true;
			}
		}

		#endregion
	}
}
