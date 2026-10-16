using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class Ciclos_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnresultado_Click(object sender, EventArgs e)
        {
            TextBox[] txtEdades = { txtedad1, txtedad2, txtedad3, txtedad4, txtedad5 };
            int suma = 0;

            for (int i = 0; i < txtEdades.Length; i++) {
                suma += int.Parse(txtEdades[i].Text);
            }

            lblresultadosuma.Text = "La suma de las edades es: " + suma.ToString();
        } 
            
    }
}