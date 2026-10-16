using System;
using System.Web.UI;

namespace proyectouno
{
    public partial class Zoologico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReiniciarMuestreo();
            }
        }

        protected void ddlAnimal_SelectedIndexChanged(object sender, EventArgs e)
        {
            ReiniciarMuestreo();
        }

        private void ReiniciarMuestreo()
        {
            ViewState["MuestrasActuales"] = 0;
            ViewState["TotalMuestras"] = int.Parse(ddlAnimal.SelectedValue);
            ViewState["Cat1"] = 0; 
            ViewState["Cat2"] = 0; 
            ViewState["Cat3"] = 0; 
            ActualizarPantalla();
            lblMensaje.Text = "Se ha cambiado de animal. Muestreo reiniciado.";
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            if (double.TryParse(txtEdad.Text, out double edad) && edad >= 0)
            {
                int actual = (int)ViewState["MuestrasActuales"];
                int maximo = (int)ViewState["TotalMuestras"];

                if (actual >= maximo)
                {
                    lblMensaje.Text = "Ya se completaron todas las muestras para este animal.";
                    return;
                }

                actual++;
                int cat1 = (int)ViewState["Cat1"];
                int cat2 = (int)ViewState["Cat2"];
                int cat3 = (int)ViewState["Cat3"];

                if (edad <= 1)
                {
                    cat1++;
                }
                else if (edad > 1 && edad < 3)
                {
                    cat2++;
                }
                else
                {
                    cat3++;
                }

                ViewState["MuestrasActuales"] = actual;
                ViewState["Cat1"] = cat1;
                ViewState["Cat2"] = cat2;
                ViewState["Cat3"] = cat3;

                txtEdad.Text = "";
                ActualizarPantalla();

                if (actual == maximo)
                {
                    lblMensaje.Text = "¡Muestreo finalizado con éxito!";
                }
            }
            else
            {
                lblMensaje.Text = "Ingrese una edad válida.";
            }
        }

        private void ActualizarPantalla()
        {
            int actual = (int)ViewState["MuestrasActuales"];
            int maximo = (int)ViewState["TotalMuestras"];
            int cat1 = (int)ViewState["Cat1"];
            int cat2 = (int)ViewState["Cat2"];
            int cat3 = (int)ViewState["Cat3"];

            lblProgreso.Text = $"Muestras: {actual} / {maximo}";

            if (actual > 0)
            {
                lblCat1.Text = $"De 0 a 1 año: {((double)cat1 / actual) * 100:F2}%";
                lblCat2.Text = $"Más de 1 y menos de 3 años: {((double)cat2 / actual) * 100:F2}%";
                lblCat3.Text = $"3 años o más: {((double)cat3 / actual) * 100:F2}%";
            }
            else
            {
                lblCat1.Text = "De 0 a 1 año: 0%";
                lblCat2.Text = "Más de 1 y menos de 3 años: 0%";
                lblCat3.Text = "3 años o más: 0%";
            }
        }
    }
}