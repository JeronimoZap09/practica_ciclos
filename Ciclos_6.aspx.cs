using System;
using System.Web.UI;

namespace proyectouno
{
    public partial class Verificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["TotalAutos"] = 0;
                ViewState["SumaPuntos"] = 0.0;
                ViewState["Menor"] = double.MaxValue;
                ViewState["Mayor"] = double.MinValue;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            if (double.TryParse(txtPuntos.Text, out double puntos) && puntos >= 0)
            {
                int totalAutos = (int)ViewState["TotalAutos"];

                if (totalAutos >= 25)
                {
                    lblMensaje.Text = "Ya se registraron los 25 automóviles.";
                    return;
                }

                totalAutos++;
                double sumaPuntos = (double)ViewState["SumaPuntos"] + puntos;
                double menor = (double)ViewState["Menor"];
                double mayor = (double)ViewState["Mayor"];

                if (puntos < menor) menor = puntos;
                if (puntos > mayor) mayor = puntos;

                ViewState["TotalAutos"] = totalAutos;
                ViewState["SumaPuntos"] = sumaPuntos;
                ViewState["Menor"] = menor;
                ViewState["Mayor"] = mayor;

                double promedio = sumaPuntos / totalAutos;

                lblInfo.Text = $"Autos registrados: {totalAutos} / 25";
                lblPromedio.Text = $"Promedio de puntos: {promedio:F2}";
                lblMenor.Text = $"Menor contaminación: {menor}";
                lblMayor.Text = $"Mayor contaminación: {mayor}";
                txtPuntos.Text = "";

                if (totalAutos == 25)
                {
                    lblMensaje.Text = "¡Verificación de los 25 autos completada!";
                }
            }
            else
            {
                lblMensaje.Text = "Ingrese un valor numérico válido de puntos.";
            }
        }
    }
}