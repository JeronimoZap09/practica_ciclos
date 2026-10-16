using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class Ciclos_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnnumeros_Click(object sender, EventArgs e)
        {
            TextBox[] numeros = {txt1, txt2, txt3, txt4, txt5};

            int positivo = 0;
            int negativo = 0;
            int neutro = 0;

            for (int i = 0; i < numeros.Length; i++) {

                if (double.TryParse(numeros[i].Text, out double numero))
                {
                    
                    if (numero > 0)
                    {
                        positivo++;
                    }
                    else if (numero < 0)
                    {
                        negativo++;
                    }
                    else
                    {
                        neutro++; 
                    }
                }
                else
                {
                    
                }

                lblpositivosr.Text = "Numeros positivos: " + positivo;
                lblnegativosr.Text = "Numeros negativos: " + negativo;
            }   lblneutrosr.Text = "Numeros neutros: " + neutro;

        }
    }
}