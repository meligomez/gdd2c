using System.Text;
using System.Security.Cryptography;
namespace Modelo.Comun
{
	public class Seguridad
	{
		public string pasarASha256(string input)
		{
			SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();
			///transforma a secuencia de bytes,codificacion
			byte[] inputBytes = Encoding.UTF8.GetBytes(input);
			///calcula a valor hash
			byte[] hashedBytes = provider.ComputeHash(inputBytes);
			/// cadena de caracteres modificable
			StringBuilder output = new StringBuilder();
			///formatea como string hex,anexa el valor hash.
			for (int i = 0; i < hashedBytes.Length; i++)
				output.Append(hashedBytes[i].ToString("x2").ToLower());
			return output.ToString();
		}
	}
}
