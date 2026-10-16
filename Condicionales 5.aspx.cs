using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class Condicionales_5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntotal_Click(object sender, EventArgs e)
        {
            double num1, num2, descuento, total;

            num1 = Convert.ToDouble(txtcolegiatura.Text);
            num2 = Convert.ToDouble(txtpromedio.Text);

            

            if (num2 >= 9)
            {
                descuento = num1 * 0.3;
                total = num1 - descuento;
                resultado.Text = "El valor de su colegiatura es: " + total.ToString();
            }
            else
            {
                descuento = num1 * 0.1;
                total = num1 + descuento;
                resultado.Text = "El valor de su colegiatura es: " + total.ToString();
            }
        }
    }
}