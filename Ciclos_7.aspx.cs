using System;
using System.Web.UI;

namespace proyectouno
{
    public partial class Atleta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Dias"] = 0;
                ViewState["SumaTiempos"] = 0.0;
                ViewState["Mayor16"] = 0;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            if (double.TryParse(txtTiempo.Text, out double tiempo) && tiempo > 0)
            {
                int dias = (int)ViewState["Dias"];

                if (dias >= 10)
                {
                    lblMensaje.Text = "Ya se completaron los 10 días de prueba.";
                    return;
                }

                dias++;
                double sumaTiempos = (double)ViewState["SumaTiempos"] + tiempo;
                int mayor16 = (int)ViewState["Mayor16"];

                if (tiempo > 16)
                {
                    mayor16++;
                }

                ViewState["Dias"] = dias;
                ViewState["SumaTiempos"] = sumaTiempos;
                ViewState["Mayor16"] = mayor16;

                double promedio = sumaTiempos / dias;

                lblDias.Text = $"Días registrados: {dias} / 10";
                lblPromedio.Text = $"Promedio de tiempos: {promedio:F2} min";
                txtTiempo.Text = "";

                if (dias == 10)
                {
                    bool ningunaMayor16 = (mayor16 == 0);
                    bool alMenosUnaMayor16 = (mayor16 > 0);
                    bool promedioMenorIgual15 = (promedio <= 15);

                    if (ningunaMayor16 || alMenosUnaMayor16 || promedioMenorIgual15)
                    {
                        lblResultadoFinal.Text = "Estado: ¡APTO para la prueba!";
                        lblResultadoFinal.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        lblResultadoFinal.Text = "Estado: NO APTO (Buscar otra especialidad)";
                        lblResultadoFinal.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            else
            {
                lblMensaje.Text = "Ingrese un tiempo válido en minutos.";
            }
        }
    }
}