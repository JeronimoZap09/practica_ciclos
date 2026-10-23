using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class Actividad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnejecutar_Click(object sender, EventArgs e)
        {
            
                try
                {
                    int i = 0;
                    int ht, he;
                    decimal salario;

                    int obreros = Convert.ToInt32(txt1.Text);

                    // Separar las horas de cada obrero.
                    string[] horas = txt2.Text.Split(',');

                    if (obreros <= 0 || horas.Length != obreros)
                    {
                        lblresultado.Text =
                            "Ingresa una cantidad positiva de obreros y " +
                            "las horas de cada uno separadas por comas.";
                        return;
                    }

                    string resultado = "";

                    while (i < obreros)
                    {
                        ht = Convert.ToInt32(horas[i].Trim());

                        if (ht < 0)
                        {
                            lblresultado.Text =
                                "Las horas del obrero " + (i + 1) +
                                " no pueden ser negativas.";
                            return;
                        }

                        if (ht > 40)
                        {
                            he = ht - 40;

                            // Primeras 40 horas a $20 y extras a $25.
                            salario = 40 * 20m + he * 25m;
                        }
                        else
                        {
                            // Hasta 40 horas: $20 por hora.
                            salario = ht * 20m;
                        }

                        resultado +=
                            "El salario semanal del obrero " + (i + 1) +
                            " es: $" + salario.ToString("N2") + "<br/>";

                        i++;
                    }

                    lblresultado.Text = resultado;
                }
                catch (FormatException)
                {
                    lblresultado.Text =
                        "Escribe números enteros. Ejemplo de horas: 40,45,30";
                }
                catch (OverflowException)
                {
                    lblresultado.Text = "Ingresaste un número demasiado grande.";
                }
            
        }
    }
}