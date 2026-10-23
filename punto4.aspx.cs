
using System;

namespace Proyecto1
{
    public partial class punto6 : System.Web.UI.Page
    {
        protected void btnfor_Click(object sender, EventArgs e)
        {
            string[] anteriores = txtanteriores.Text.Split(',');
            string[] personas = txtpesajes.Text.Split(';');

            if (anteriores.Length != 5 || personas.Length != 5)
            {
                lblresultado.Text = "Ingrese los 5 pesos anteriores y los 5 grupos de pesajes.";
                return;
            }

            decimal[] pesosAnteriores = new decimal[5];

            for (int i = 0; i < 5; i++)
            {
                if (!decimal.TryParse(anteriores[i].Trim(), out pesosAnteriores[i]) ||
                    pesosAnteriores[i] <= 0)
                {
                    lblresultado.Text = "Revise los pesos anteriores. Deben ser positivos.";
                    return;
                }
            }

            string resultado = "RESULTADOS CON FOR<br />";

            for (int i = 0; i < 5; i++)
            {
                string[] pesajes = personas[i].Split(',');

                if (pesajes.Length != 10)
                {
                    lblresultado.Text = "Cada persona debe tener exactamente 10 pesajes.";
                    return;
                }

                decimal suma = 0;

                for (int j = 0; j < 10; j++)
                {
                    decimal peso;

                    if (!decimal.TryParse(pesajes[j].Trim(), out peso) || peso <= 0)
                    {
                        lblresultado.Text = "Todos los pesajes deben ser números positivos.";
                        return;
                    }

                    suma += peso;
                }

                decimal promedio = suma / 10;
                decimal diferencia = promedio - pesosAnteriores[i];

                if (diferencia > 0)
                    resultado += "Persona " + (i + 1) + ": SUBIO " +
                        diferencia.ToString("N2") + " kg<br />";
                else if (diferencia < 0)
                    resultado += "Persona " + (i + 1) + ": BAJO " +
                        Math.Abs(diferencia).ToString("N2") + " kg<br />";
                else
                    resultado += "Persona " + (i + 1) +
                        ": MANTUVO su peso (0 kg)<br />";
            }

            lblresultado.Text = resultado;
        }

        protected void btnwhile_Click(object sender, EventArgs e)
        {
            string[] anteriores = txtanteriores.Text.Split(',');
            string[] personas = txtpesajes.Text.Split(';');

            if (anteriores.Length != 5 || personas.Length != 5)
            {
                lblresultado.Text = "Ingrese los 5 pesos anteriores y los 5 grupos de pesajes.";
                return;
            }

            decimal[] pesosAnteriores = new decimal[5];
            int i = 0;

            while (i < 5)
            {
                if (!decimal.TryParse(anteriores[i].Trim(), out pesosAnteriores[i]) ||
                    pesosAnteriores[i] <= 0)
                {
                    lblresultado.Text = "Revise los pesos anteriores. Deben ser positivos.";
                    return;
                }

                i++;
            }

            string resultado = "RESULTADOS CON WHILE<br />";
            i = 0;

            while (i < 5)
            {
                string[] pesajes = personas[i].Split(',');

                if (pesajes.Length != 10)
                {
                    lblresultado.Text = "Cada persona debe tener exactamente 10 pesajes.";
                    return;
                }

                decimal suma = 0;
                int j = 0;

                while (j < 10)
                {
                    decimal peso;

                    if (!decimal.TryParse(pesajes[j].Trim(), out peso) || peso <= 0)
                    {
                        lblresultado.Text = "Todos los pesajes deben ser números positivos.";
                        return;
                    }

                    suma += peso;
                    j++;
                }

                decimal promedio = suma / 10;
                decimal diferencia = promedio - pesosAnteriores[i];

                if (diferencia > 0)
                    resultado += "Persona " + (i + 1) + ": SUBIO " +
                        diferencia.ToString("N2") + " kg<br />";
                else if (diferencia < 0)
                    resultado += "Persona " + (i + 1) + ": BAJO " +
                        Math.Abs(diferencia).ToString("N2") + " kg<br />";
                else
                    resultado += "Persona " + (i + 1) +
                        ": MANTUVO su peso (0 kg)<br />";

                i++;
            }

            lblresultado.Text = resultado;
        }
    }
}
