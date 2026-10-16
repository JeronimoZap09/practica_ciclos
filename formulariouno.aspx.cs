using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class formulariouno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrespuesta_Click(object sender, EventArgs e)
        {
            double c1, c2, c3, promedio;

            c1 = Convert.ToDouble(txtcalf1.Text);
            c2 = Convert.ToDouble(txtcalf2.Text);
            c3 = Convert.ToDouble(txtcalf3.Text);

            promedio = (c1 + c2 + c3) / 3;

            if (promedio >= 70)
            {
                resultado.Text = "Usted aprobó, su nota es: " + promedio;
            } else
            {
                resultado.Text = "Usted reprobó, su nota es: " + promedio;
            }

        }
    }
}