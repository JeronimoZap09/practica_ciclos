using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno.Properties
{
    public partial class Condicionales_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncuota_Click(object sender, EventArgs e)
        {
            double num1, total;

            num1 = Convert.ToDouble(txtmonto.Text);

            if (num1 < 50000)
            {
                total = num1 * 0.03;
                resultado.Text = "Su cuota a pagar es de: " + total.ToString();
            }
            else
            {
                total = num1 * 0.02;
                resultado.Text = "Su cuota a pagar es de: " + total.ToString();
            }
        }
    }
}