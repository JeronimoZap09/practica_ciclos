
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class punto1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btncontar_Click(object sender, EventArgs e)
        {
            try
            {
                // MEJORA: TryParse evita errores si escriben letras
                // y comprueba que la cantidad sea un entero positivo.
                int n;

                if (!int.TryParse(txtpersonas.Text, out n) || n <= 0)
                {
                    lblconteor.Text = "Ingresa una cantidad entera mayor que cero.";
                    return;
                }

                string[] listaGeneros = txtgenero.Text.Split(',');

                // MEJORA: Se comprueba que haya un género por persona.
                // Length < 0 nunca se cumple porque la longitud no es negativa.
                if (listaGeneros.Length != n)
                {
                    lblconteor.Text = "Debes ingresar exactamente " + n + " generos.";
                    return;
                }

                int contadorHombres = 0;
                int contadorMujeres = 0;
                int i = 0;

                while (i < n)
                {
                    string genero = listaGeneros[i].Trim().ToUpper();

                    // MEJORA: Solo se permiten los géneros M y F.
                    if (genero != "M" && genero != "F")
                    {
                        lblconteor.Text = "Genero incorrecto en la posicion "
                            + (i + 1) + ". Escribe M o F.";
                        return;
                    }

                    if (genero == "M")
                    {
                        contadorHombres++;
                    }
                    else if (genero == "F")
                    {
                        contadorMujeres++;
                    }

                    i++;
                }

                // MEJORA: Se muestran los resultados de forma organizada.
                lblconteor.Text = "Total de personas contadas: " + n + "<br /><br />";
                lblconteor.Text += "Total de hombres: " + contadorHombres + "<br /><br />";
                lblconteor.Text += "Total de mujeres: " + contadorMujeres;
            }
            catch (Exception)
            {
                // MEJORA: Se muestra un mensaje comprensible al usuario.
                lblconteor.Text = "Ocurrio un error. Verifica los datos e intenta nuevamente.";
            }
        }

        // MEJORA: Permite borrar los campos y comenzar otro conteo.
        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            txtpersonas.Text = "";
            txtgenero.Text = "";
            lblconteor.Text = "";
        }
    }
}
