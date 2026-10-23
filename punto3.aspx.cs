
using System;

namespace Proyecto1
{
    public partial class punto5 : System.Web.UI.Page
    {
        protected void btnfor_Click(object sender, EventArgs e)
        {
            decimal dinero;

            if (!decimal.TryParse(txtinversion.Text, out dinero) || dinero <= 0)
            {
                lblresultado.Text = "Ingrese una inversión válida.";
                return;
            }

            decimal inicial = dinero;

            
            for (int i = 1; i <= 12; i++)
            {
                dinero = dinero * 1.02m;
            }                                                           

            decimal ganancia = dinero - inicial;

            lblresultado.Text =
                "Cálculo realizado con FOR<br />" +
                "Inversión inicial: $" + inicial.ToString("N2") + "<br />" +
                "Ganancia total: $" + ganancia.ToString("N2") + "<br />" +
                "Saldo después de 12 meses: $" + dinero.ToString("N2");
        }

        protected void btnwhile_Click(object sender, EventArgs e)
        {
            decimal dinero;

            if (!decimal.TryParse(txtinversion.Text, out dinero) || dinero <= 0)
            {
                lblresultado.Text = "Ingrese una inversión válida.";
                return;
            }

            decimal inicial = dinero;
            int mes = 1;


            while (mes <= 12)
            {
                dinero = dinero * 1.02m;
                mes++;
            }

            decimal ganancia = dinero - inicial;

            lblresultado.Text =
                "Cálculo realizado con WHILE<br />" +
                "Inversión inicial: $" + inicial.ToString("N2") + "<br />" +
                "Ganancia total: $" + ganancia.ToString("N2") + "<br />" +
                "Saldo después de 12 meses: $" + dinero.ToString("N2");
        }
    }
}
