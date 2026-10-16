using System;
using System.Web.UI;

namespace proyectouno
{
    public partial class Muestreo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Total"] = 0;
                ViewState["SumaNinos"] = 0.0; ViewState["ContNinos"] = 0;
                ViewState["SumaJovenes"] = 0.0; ViewState["ContJovenes"] = 0;
                ViewState["SumaAdultos"] = 0.0; ViewState["ContAdultos"] = 0;
                ViewState["SumaViejos"] = 0.0; ViewState["ContViejos"] = 0;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            if (int.TryParse(txtEdad.Text, out int edad) && double.TryParse(txtPeso.Text, out double peso))
            {
                int total = (int)ViewState["Total"];

                if (total >= 50)
                {
                    lblMensaje.Text = "Ya se completaron las 50 personas.";
                    return;
                }

                

                if (edad >= 0 && edad <= 12)
                {
                    ViewState["SumaNinos"] = (double)ViewState["SumaNinos"] + peso;
                    ViewState["ContNinos"] = (int)ViewState["ContNinos"] + 1;
                }
                else if (edad >= 13 && edad <= 29)
                {
                    ViewState["SumaJovenes"] = (double)ViewState["SumaJovenes"] + peso;
                    ViewState["ContJovenes"] = (int)ViewState["ContJovenes"] + 1;
                }
                else if (edad >= 30 && edad <= 59)
                {
                    ViewState["SumaAdultos"] = (double)ViewState["SumaAdultos"] + peso;
                    ViewState["ContAdultos"] = (int)ViewState["ContAdultos"] + 1;
                }
                else if (edad >= 60)
                {
                    ViewState["SumaViejos"] = (double)ViewState["SumaViejos"] + peso;
                    ViewState["ContViejos"] = (int)ViewState["ContViejos"] + 1;
                }

                total++;
                ViewState["Total"] = total;

                
                txtEdad.Text = "";
                txtPeso.Text = "";

               
                ActualizarPantalla(total);
            }
            else
            {
                lblMensaje.Text = "Ingrese una edad y un peso válidos.";
            }
        }

        private void ActualizarPantalla(int total)
        {
            int cN = (int)ViewState["ContNinos"];
            int cJ = (int)ViewState["ContJovenes"];
            int cA = (int)ViewState["ContAdultos"];
            int cV = (int)ViewState["ContViejos"];

            double pN = cN > 0 ? (double)ViewState["SumaNinos"] / cN : 0;
            double pJ = cJ > 0 ? (double)ViewState["SumaJovenes"] / cJ : 0;
            double pA = cA > 0 ? (double)ViewState["SumaAdultos"] / cA : 0;
            double pV = cV > 0 ? (double)ViewState["SumaViejos"] / cV : 0;

            lblInfo.Text = $"Total registrados: {total} / 50";
            lblNinos.Text = $"Niños (0-12): Promedio = {pN:F2} kg";
            lblJovenes.Text = $"Jóvenes (13-29): Promedio = {pJ:F2} kg";
            lblAdultos.Text = $"Adultos (30-59): Promedio = {pA:F2} kg";
            lblViejos.Text = $"Viejos (60+): Promedio = {pV:F2} kg";
        }
    }
}