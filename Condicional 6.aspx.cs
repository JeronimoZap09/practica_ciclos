using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class Condicional_6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnresultado_Click(object sender, EventArgs e)
        {
            double num, total;

            num = Convert.ToDouble(txtingresos.Text);


            if (num < 50000)
            {

                total = num * 0.03;
                resultadocuota.Text = "La cuota a pagar es de: " + total.ToString();
            }
            else
            {
                total = num * 0.02;
                resultadocuota.Text = "La cuota a pagar es de:  " + total.ToString();
            }
        }
    }
}