using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectouno
{
    public partial class CIclos_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrespuesta_Click(object sender, EventArgs e)
        {
            TextBox[] numeros = { txt1, txt2, txt3 };

            double num, cubo, cuarta = 0;
            string cubos = "", cuartas = "";

            for (int i = 0; i < numeros.Length; i++) {

                num = Convert.ToDouble(numeros[i].Text);
                cubo = num * num * num;
                cuarta = cubo * num;

                cubos += cubo + ", ";
                cuartas += cuarta + ", ";
            
            }

            lblcubor.Text = cubos;
            lblcuartar.Text = cuartas;
            
        }
    }
}